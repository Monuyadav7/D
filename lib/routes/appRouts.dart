import 'package:app/controllers/DataUploader/question_paper_ctrl.dart';
import 'package:app/screens/home/home_screen.dart';
import 'package:app/screens/introduction/introduction_screen.dart';
import 'package:app/screens/splash_screen/splach_screen.dart';
import 'package:get/get.dart';
class AppRoutes{
     static List<GetPage> routes() => [
        GetPage(name:"/",page:()=>SplashScreen()),
        GetPage(name: "/introduction", page: ()=>AppIntroductionScreen()),
        GetPage(name: "/home", page:()=>const HomeScreen(),binding: BindingsBuilder((){
          Get.put(QuestionPaperController());
        }))
     ];
}