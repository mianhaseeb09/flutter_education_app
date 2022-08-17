import 'package:flutter/material.dart';
import 'package:flutter_education_app/bindings/initial_binding.dart';
import 'package:flutter_education_app/controller/theme_controller.dart';
import 'package:flutter_education_app/routes/routes.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Get.find<ThemeController>().lightTheme,
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.routes(),
    );
  }
}

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp( GetMaterialApp(
//     debugShowCheckedModeBanner: false,
//       home: DataUploaderScreen()
//   ));
// }
