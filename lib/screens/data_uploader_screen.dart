import 'package:flutter/material.dart';
import 'package:flutter_education_app/controller/data_uploader.dart';
import 'package:flutter_education_app/firebase_ref/loading_status.dart';
import 'package:get/get.dart';

class DataUploaderScreen extends StatelessWidget {
  DataUploaderScreen({Key? key}) : super(key: key);
  DataUploader controller = Get.put(DataUploader());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Obx(() => Text(
              controller.loadingStatus.value == LoadingStatus.completed
                  ? "uploading Completed"
                  : "Uploading..."))),
    );
  }
}
