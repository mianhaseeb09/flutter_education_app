import 'package:flutter_education_app/controller/question_paper_controller.dart';
import 'package:flutter_education_app/screens/home/home_screen.dart';
import 'package:flutter_education_app/screens/introduction/introduction_screens.dart';
import 'package:flutter_education_app/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(name: "/", page: () => const SplashScreen()),
        GetPage(name: "/introduction",
            page: () => const IntroductionScreen()
        ),
        GetPage(
            name: "/home",
            page: () =>  const HomeScreen(),
            binding: BindingsBuilder(() {
              Get.put(QuestionPaperController());
            })),
      ];
}
