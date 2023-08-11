import 'package:app/widgets/app_circle_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../configs/themes/app_colors.dart';
import '../../controllers/DataUploader/question_paper_ctrl.dart';
final screenWidth = Get.width;
class AppIntroductionScreen extends StatelessWidget {
  const AppIntroductionScreen({super.key});
  @override
  Widget build(BuildContext context) {
  // Get.put(QuestionPaperController());
    return Scaffold(
      body:Container(
        alignment: Alignment.center,
          decoration: BoxDecoration(gradient: mainGradient()),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: screenWidth*0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star,size: 30,),
              const Text(
                style:TextStyle(
                  fontSize: 18,color: onSurfaceTextColor,fontWeight: FontWeight.bold,
                ),
                "Welcome to your app. When you have a dream you have got to grab it and never let go. Nothing is impossible. There is nothing impossible to they who will try. The bad news is time flies"),
              AppCircleButton(
                 child: const Icon(Icons.arrow_forward),             
                 onTap: (){Get.offAllNamed("/home");},
                ),
                
            ],
          ),
        ),
      )
    );
  }
}