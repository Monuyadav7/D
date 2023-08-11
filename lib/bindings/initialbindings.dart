import 'package:app/controllers/authController/authcontroller.dart';
import 'package:app/controllers/theme_controller.dart';
import 'package:get/get.dart';
class InitialBindings extends Bindings{
  @override
  void dependencies(){
    Get.put(ThemeController());
    Get.put(AuthController(),permanent: true);
  }
}