import 'package:app/bindings/initialBindings.dart';
import 'package:app/controllers/theme_controller.dart';
import 'package:app/routes/appRouts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
//   runApp( GetMaterialApp(
//     home:DataUploaderScreen()
//   ));
// }
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  InitialBindings().dependencies();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(      
      theme: Get.find<ThemeController>().lightTheme,
      getPages: AppRoutes.routes(),
      );
  }
}
