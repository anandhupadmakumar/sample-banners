import 'dart:convert';

import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:sample_api/core/constants/constants.dart';
import 'package:sample_api/core/constants/http_urls.dart';
import 'package:sample_api/model/banner_model.dart';

class HomeController extends GetxController {
  @override
  void onReady() {
    getData();

    super.onReady();
  }

  List? bannerData;
  final dio = Dio();

  void getData() async {
    final response = await dio.get('$baseUrl$getBanner');

    final datas = jsonDecode(response.toString());

    if (datas['status_code'] == true) {
      bannerData = datas['Data'].map((e) => BannerData.fromJson(e)).toList();
      print(datas);
    } else {
      print(datas);
      bannerData = null;
    }

    update();
  }
}
