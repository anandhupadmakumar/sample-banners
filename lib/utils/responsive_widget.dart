import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_api/core/constants/constants.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget mobileScreen;
  final Widget tabScreen;
  final Widget webScreen;
  const ResponsiveWidget(
      {super.key,
      required this.mobileScreen,
      required this.tabScreen,
      required this.webScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (Get.width < mobile) {
          return mobileScreen;
        } else if (Get.width > mobile && Get.width < web) {
          return tabScreen;
        } else {
          return webScreen;
        }
      },
    );
  }
}
