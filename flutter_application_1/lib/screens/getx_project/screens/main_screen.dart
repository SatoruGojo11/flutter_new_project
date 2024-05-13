import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/getx_project/controllers/main_screen_controller.dart';
import 'package:flutter_application_1/screens/getx_project/screens/first_screen.dart';
import 'package:flutter_application_1/screens/getx_project/screens/second_screen.dart';
import 'package:flutter_application_1/utils/text.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = const [
      FirstScreen(),
      SecondScreen(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: text('Main Screen App Bar'),
      ),
      body: GetBuilder(
          init: MainScreenController(),
          builder: (controller) {
            return screens[controller.currentIndex.value];
          }),
      bottomNavigationBar: GetBuilder(
        init: MainScreenController(),
        builder: (controller) => BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          onTap: (value) => controller.updateOnTap(value),
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Notification',
              icon: Icon(
                Icons.notifications,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
