import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get find => Get.find();

  final scrollController = ScrollController();

  final reachTop = false.obs;

  @override
  void onInit() {
    scrollController.addListener(_scrollListener);
    super.onInit();
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    final offset = scrollController.offset;
    if (offset < 18) {
      reachTop.value = false;
    } else {
      reachTop.value = true;
    }
    reachTop.refresh();
  }
}