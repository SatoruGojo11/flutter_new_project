import 'package:flutter/material.dart';
import 'package:flutter_new_project/utils/text.dart';

class ReadmoreScreen extends StatefulWidget {
  const ReadmoreScreen({super.key});

  @override
  State<ReadmoreScreen> createState() => _ReadmoreScreenState();
}

class _ReadmoreScreenState extends State<ReadmoreScreen> {
  String screenName = 'Readmore Screen';
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
