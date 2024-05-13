import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/getx_project/controllers/first_screen_controller.dart';
import 'package:flutter_application_1/utils/text.dart';
import 'package:get/get.dart';

class FirstScreen extends GetView<FirstScreenController> {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: FirstScreenController(),
      builder: (controller) => RefreshIndicator(
        onRefresh: () async => controller.updateDataOnRefresh(),
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () => controller.updateDataOnRefresh(),
            child: const Icon(Icons.update),
          ),
          body: Container(
            color: Colors.red,
            height: 500,
            width: 600,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: controller.pageData.length,
              itemBuilder: (context, index) => text(controller.pageData[index]),
            ),
          ),
        ),
      ),
    );
  }
}
