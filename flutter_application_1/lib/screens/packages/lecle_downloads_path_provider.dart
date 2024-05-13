import 'package:flutter/material.dart';
import 'package:flutter_new_project/utils/text.dart';

class LecleDownloadsPathProviderScreen extends StatefulWidget {
  const LecleDownloadsPathProviderScreen({super.key});

  @override
  State<LecleDownloadsPathProviderScreen> createState() =>
      _LecleDownloadsPathProviderScreenState();
}

class _LecleDownloadsPathProviderScreenState
    extends State<LecleDownloadsPathProviderScreen> {
  String screenName = 'Flutter Downloads Path Provider Screen';
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
