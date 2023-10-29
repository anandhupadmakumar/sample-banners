import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_api/utils/responsive_functions.dart';

import '../../controller/home/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Center(
            child: Text(
          'Our Banners',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
      ),
      body: SafeArea(child: GetBuilder<HomeController>(builder: (data) {
        return SingleChildScrollView(
          child: data.bannerData == null
              ? SizedBox(
                  height: Get.height,
                  child: const Center(child: CircularProgressIndicator()))
              : Column(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Container(
                        height: findRatio(250, 350).height,
                        width: findRatio(250, 350).width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                image:
                                    NetworkImage(data.bannerData![index].url))),
                      ),
                      itemCount: data.bannerData!.length,
                      separatorBuilder: (context, index) => SizedBox(
                        height: findRatio(20, 20).height,
                      ),
                    ),
                  ],
                ),
        );
      })),
    );
  }
}
