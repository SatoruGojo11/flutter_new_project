import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/text.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: text('This is Second Screen'),
      ),
    );
  }
}
