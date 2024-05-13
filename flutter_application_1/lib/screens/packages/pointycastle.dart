import 'package:flutter/material.dart';
import 'package:flutter_new_project/utils/text.dart';

class PointyCastleScreen extends StatefulWidget {
  const PointyCastleScreen({super.key});

  @override
  State<PointyCastleScreen> createState() => _PointyCastleScreenState();
}

class _PointyCastleScreenState extends State<PointyCastleScreen> {
  String screenName = 'Pointy Castle Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(screenName),
      ),
      body: Center(
        child: text('This is $screenName'),
      ),
    );
  }
}
