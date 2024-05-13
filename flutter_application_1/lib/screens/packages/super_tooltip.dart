import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/text.dart';
import 'package:super_tooltip/super_tooltip.dart';

class SuperToolTipScreen extends StatefulWidget {
  const SuperToolTipScreen({super.key});

  @override
  State<SuperToolTipScreen> createState() => _SuperToolTipScreenState();
}

class _SuperToolTipScreenState extends State<SuperToolTipScreen> {
  final searchController = SuperTooltipController();
  final homeController = SuperTooltipController();
  final notificationController = SuperTooltipController();
  final body1Controller = SuperTooltipController();
  final body2Controller = SuperTooltipController();
  @override
  void initState() {
    super.initState();
    initiateToolTipControllers();
  }

  Future<void> initiateToolTipControllers() async {
    Future.delayed(
      const Duration(seconds: 1),
      () async => await searchController.showTooltip(),
    );
  }

  @override
  Widget build(BuildContext context) {
    String screenName = 'Super Tool Tip Screen';
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(screenName),
        actions: [
          ToolTipWidget(
            toolTipController: searchController,
            title: 'Search Bar',
            description: 'This is Search bar',
            screenWidth: width,
            onNext: () async {
              await searchController.hideTooltip();
              await homeController.showTooltip();
            },
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ),
            ),
          ),
          ToolTipWidget(
            toolTipController: homeController,
            title: 'Home',
            description: 'This is Home',
            screenWidth: width,
            onNext: () async {
              await homeController.hideTooltip();
              await notificationController.showTooltip();
            },
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
              ),
            ),
          ),
          ToolTipWidget(
            toolTipController: notificationController,
            title: 'Notification',
            description: 'This is Notification',
            screenWidth: width,
            onNext: () async {
              await notificationController.hideTooltip();
              await body1Controller.showTooltip();
            },
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ToolTipWidget(
              toolTipController: body1Controller,
              title: 'Sample Text',
              description: 'This is Sample Text',
              screenWidth: width,
              onNext: () async {
                await body1Controller.hideTooltip();
              },
              child: Container(
                color: Colors.amber,
                height: 100,
                width: 100,
                child: Center(child: text('Sample Text')),
              ),
            ),
            text('This is $screenName'),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ToolTipWidget extends StatelessWidget {
  final SuperTooltipController toolTipController;
  final double screenWidth;
  final Function()? onNext;
  final Widget child;
  final String? title;
  final String? description;

  const ToolTipWidget({
    super.key,
    required this.toolTipController,
    required this.screenWidth,
    required this.child,
    this.title,
    this.description,
    this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return SuperTooltip(
      controller: toolTipController,
      onHide: () {
        log(toolTipController.event.toString());
      },
      showCloseButton: ShowCloseButton.inside,
      content: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: screenWidth * 0.5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            text(title ?? ''),
            text(description ?? ''),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: onNext,
                    child: const Text(
                      'Next',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      child: child,
    );
  }
}
