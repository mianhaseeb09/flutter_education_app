import 'package:flutter/material.dart';
import 'package:flutter_education_app/configs/themes/app_colors.dart';
import 'package:flutter_education_app/screens/home/home_screen.dart';
import 'package:flutter_education_app/screens/widgets/circle_button.dart';
import 'package:get/get.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: mainGradient(context)),
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.star,
                size: 65,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'This is education App.You can use as you want.if you understand how it works you would be able to scale it.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: onSurfaceTextColor,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap:()=> Get.offAndToNamed("/home") ,
                child: CircleButton(
                    onTap:(){},
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      size: 35,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
