import 'package:flutter_education_app/controller/auth_controller.dart';
import 'package:flutter_education_app/controller/theme_controller.dart';
import 'package:get/get.dart';

class InitialBindings implements Bindings{
  @override
  void dependencies(){
    Get.put(ThemeController());
    Get.put(AuthController(),permanent: true);

}
}