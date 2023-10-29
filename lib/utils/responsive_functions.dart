import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_api/core/constants/constants.dart';

Size findRatio(width, height) {
  final rw = (Get.width * width) /
      (Get.width < mobile
          ? mobile
          : Get.width > mobile && Get.width < web
              ? tab
              : web);
  final rh = (Get.width * height) /
      (Get.width < mobile
          ? mobile
          : Get.width > mobile && Get.width < web
              ? tab
              : web);
  print(rw);
  print(rh);

  return Size(rw, rh);
}
