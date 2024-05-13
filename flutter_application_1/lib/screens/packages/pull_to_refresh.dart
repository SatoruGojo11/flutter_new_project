import 'package:flutter/material.dart';
import 'package:flutter_new_project/utils/text.dart';

class PullToRefreshScreen extends StatefulWidget {
  const PullToRefreshScreen({super.key});

  @override
  State<PullToRefreshScreen> createState() => _PullToRefreshScreenState();
}

class _PullToRefreshScreenState extends State<PullToRefreshScreen> {
  String screenName = 'Point to Refresh Screen';
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
