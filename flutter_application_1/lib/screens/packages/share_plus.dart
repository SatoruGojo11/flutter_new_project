import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/text.dart';

class ShareplusScreen extends StatefulWidget {
  const ShareplusScreen({super.key});

  @override
  State<ShareplusScreen> createState() => _ShareplusScreenState();
}

class _ShareplusScreenState extends State<ShareplusScreen> {
  String screenName = 'Share Plus Screen';
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
