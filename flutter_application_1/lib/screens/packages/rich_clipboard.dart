import 'package:flutter/material.dart';
import 'package:flutter_new_project/utils/text.dart';

class RichClipboardScreen extends StatefulWidget {
  const RichClipboardScreen({super.key});

  @override
  State<RichClipboardScreen> createState() => _RichClipboardScreenState();
}

class _RichClipboardScreenState extends State<RichClipboardScreen> {
  String screenName = 'Rich Clipboard Screen';
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
