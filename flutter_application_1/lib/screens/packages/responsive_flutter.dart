import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/text.dart';

class ResponsiveFrameworkScreen extends StatefulWidget {
  const ResponsiveFrameworkScreen({super.key});

  @override
  State<ResponsiveFrameworkScreen> createState() =>
      _ResponsiveFrameworkScreenState();
}

class _ResponsiveFrameworkScreenState extends State<ResponsiveFrameworkScreen> {
  String screenName = 'Responsive Framework Screen';
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
