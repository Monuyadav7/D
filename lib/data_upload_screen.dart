import 'package:app/controllers/DataUploader/datauploader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'firebase_ref/loadingstatus.dart';
class DataUploaderScreen extends StatelessWidget {
  DataUploaderScreen({super.key});
  DataUploader controller = Get.put(DataUploader());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(()=>controller.loadinStatus.value==LoadingStatus.completed?
        Text("Uploading Completed"):Text("Uploading"),
      ),
      )
    );
  }
}