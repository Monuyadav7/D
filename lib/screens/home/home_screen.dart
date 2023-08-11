import 'package:app/configs/themes/app_colors.dart';
import 'package:app/configs/themes/ui_parameters.dart';
import 'package:app/controllers/DataUploader/question_paper_ctrl.dart';
import 'package:app/screens/home/question_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../services/firebase_storage_services.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FirebaseStorageService());
    QuestionPaperController questionpaperController = Get.find();
    return Scaffold(
      body: Obx(()=> ListView.separated(
        // padding: UIParameters.mobileScreenPadding,
        
        itemBuilder: (BuildContext context,int index){
          // return QuestionCard(
          //   model: questionpaperController.allPapers[index]
          //   );
          return ClipRRect(
              borderRadius: BorderRadius.circular(18),
                child: ColoredBox(
                  // color: Theme.of(context).primaryColor.withOpacity(0.2),
                  color: Colors.black12,
                  child: SizedBox(
                    height: Get.width*0.15,
                    width: Get.width*0.15,
                    child: CachedNetworkImage(
                      imageUrl: questionpaperController.allPapers[index].imageUrl!,
                      placeholder: (context,url)=>Container(
                        alignment: Alignment.center,
                        child: const CircularProgressIndicator(),
                      ),
                      errorWidget: (context,url,error)=>Image.asset("assets/images/app_splash_logo.png"),
                    ),
                  ),
                ),
            );
        }, 
         separatorBuilder: (BuildContext context, int index) { 
          return const SizedBox(
            height: 20,
          );
          },
          itemCount: questionpaperController.allPapers.length,
      )
      ),
    );
  }
}