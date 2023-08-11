import 'package:app/firebase_ref/references.dart';
import 'package:app/services/firebase_storage_services.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/question_paper_model.dart';
class QuestionPaperController extends GetxController{
    final alllPaperImages = <String>[].obs;
    final allPapers = <QuestionPaperModel>[].obs;
    @override
    void onReady(){
      getAllPapers();
      super.onReady();
    }
    Future<void> getAllPapers() async {
      try{
        QuerySnapshot<Map<String,dynamic>> data = await questionPaperRF.get();
        final paperList = data.docs.map((paper)=>QuestionPaperModel.fromSnapShot(paper)).toList();
        allPapers.assignAll(paperList);
          for(var paper in paperList){
             final imgUrl = await  Get.find<FirebaseStorageService>().getImage(paper.title);
             paper.imageUrl = imgUrl;
          } 
          allPapers.assignAll(paperList);
      }
      catch(e){
        print(e);
      }
    }
}