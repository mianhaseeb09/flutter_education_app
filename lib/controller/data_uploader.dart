import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_education_app/firebase_ref/loading_status.dart';
import 'package:flutter_education_app/firebase_ref/reference.dart';
import 'package:flutter_education_app/model/question_paper.dart';
import 'package:get/get.dart';

class DataUploader extends GetxController {
  @override
  void onReady() {
    uploadData();
    super.onReady();
  }
  final loadingStatus=LoadingStatus.loading.obs;

  Future<void> uploadData() async {
    loadingStatus.value=LoadingStatus.loading;

    final fireStore = FirebaseFirestore.instance;
    final manifestContent = await DefaultAssetBundle.of(Get.context!)
        .loadString("AssetManifest.json");
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    // load Json file and print path
    final paperInAssets = manifestMap.keys
        .where((path) =>
    path.startsWith("assets/DB/paper") && path.contains(".json"))
        .toList();
    if (kDebugMode) {
      print(paperInAssets);
    }
    List<QuestionPaperModel> questionPapers = [];
    for (var paper in paperInAssets) {
      String stringPaperContent = await rootBundle.loadString(paper);
      questionPapers
          .add(QuestionPaperModel.fromJson(json.decode(stringPaperContent)));
    }
    var batch = fireStore.batch();
    for (var paper in questionPapers) {
      batch.set(questionPaperRF.doc(paper.id), {
        "title": paper.title,
        "image_url": paper.imageUrl,
        "description": paper.description,
        "time_seconds": paper.timeSeconds,
        "question_count": paper.questions == null ? 0 : paper.questions!.length
      });
      for (var questions in paper.questions!) {
        final questionPath = questionsRf(
            paperId: paper.id, questionId: questions.id);
        batch.set(questionPath, {
          "question": questions.question,
          "correct_answer": questions.correctAnswer
        });
        for (var answer in questions.answers) {
          batch.set(questionPath.collection("answers").doc(answer.identifier), {

            "identifier": answer.identifier,
            "answer": answer.answer
          });
        }
      }
      await batch.commit();
      loadingStatus.value=LoadingStatus.completed;
    }
  }
}
