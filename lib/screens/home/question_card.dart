// import 'package:app/configs/themes/custom_text_style.dart';
// import 'package:app/configs/themes/ui_parameters.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../models/question_paper_model.dart';

// class QuestionCard extends StatelessWidget {
//   const QuestionCard({super.key, required this.model});
//   final QuestionPaperModel model;
//   @override
//   Widget build(BuildContext context) {
//     const double padding = 10.0;
//     return Padding(
//       padding: const EdgeInsets.all(padding),
//       child: Stack(
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [            
//             ClipRRect(
//               borderRadius: BorderRadius.circular(18),
//                 child: ColoredBox(
//                   color: Theme.of(context).primaryColor.withOpacity(0.2),
//                   child: SizedBox(
//                     height: Get.width*0.15,
//                     width: Get.width*0.15,
//                     child: CachedNetworkImage(
//                       imageUrl: model.imageUrl!,
//                       placeholder: (context,url)=>Container(
//                         alignment: Alignment.center,
//                         child: const CircularProgressIndicator(),
//                       ),
//                       errorWidget: (context,url,error)=>Image.asset("assets/images/app_splash_logo.png"),
//                     ),
//                   ),
//                 ),
//             )
//           ,
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(model.title,
//                 style: cartTitles(context),),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10,bottom: 10),
//                   child: Text(model.description),
//                 )
//               ],
//             ),
//           )
//           ],)
//         ],
//       ),
//     );
//   }
// }