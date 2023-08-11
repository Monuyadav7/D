import 'dart:convert';
import 'package:app/firebase_ref/references.dart';
import 'package:app/models/question_paper_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import '../../firebase_ref/loadingstatus.dart';
class DataUploader extends GetxController{
    @override
    void onReady(){
      uploadData();
      super.onReady();
    }
    final loadinStatus = LoadingStatus.loading.obs;
    Future<void> uploadData() async {
      loadinStatus.value = LoadingStatus.completed;
      final fireStore = FirebaseFirestore.instance;
      final manifestContent = await DefaultAssetBundle.of(Get.context!)
      .loadString("AssetManifest.json");
      final Map<String,dynamic> manifestMap = json.decode(manifestContent);
      final papersInasset = manifestMap.keys
            .where((path)=>path.startsWith('assets')&&path.contains('.json'))
            .toList();
      List<QuestionPaperModel> questions = [];
      for (var paper in papersInasset){
          String paperContentAsString = await rootBundle.loadString(paper);
          questions.add(QuestionPaperModel.fromJson(json.decode(paperContentAsString)));
      }
      var batch = fireStore.batch();

      for(var paper in questions){
        batch.set(questionPaperRF.doc(paper.id), {
          'title':paper.title,
          'image_url':paper.imageUrl,
          'discription':paper.description,
          'time_seconds':paper.timeSeconds,
          'question_count':paper.questions==null?0:paper.questions!.length,
        });
        for (var questions in paper.questions!) {
        final questionPath =
            questionRF(paperId: paper.id, questionId: questions.id);
        batch.set(questionPath, {
          "question": questions.question,
          "correct_answer": questions.correctAnswer,
        });
        // print(questions.answers.length);
        for (var answer in questions.answers) {
          batch.set(questionPath.collection("answers").doc(answer.identifier), {
            "identifier": answer.identifier,
            "Answer": answer.answer,
          });
      }      
    }
}
  await batch.commit();
  loadinStatus.value = LoadingStatus.completed;
    }
    
}