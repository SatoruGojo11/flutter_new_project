import 'package:flutter/material.dart';
import 'package:flutter_new_project/utils/text.dart';

class Syncfusionflutterchartsscreen extends StatefulWidget {
  const Syncfusionflutterchartsscreen({super.key});

  @override
  State<Syncfusionflutterchartsscreen> createState() =>
      _SyncfusionflutterchartsscreenState();
}

class _SyncfusionflutterchartsscreenState
    extends State<Syncfusionflutterchartsscreen> {
  String screenName = 'Sync Fusion Flutter Charts Screen';
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
