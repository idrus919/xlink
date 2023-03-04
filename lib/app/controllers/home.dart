import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get find => Get.find();

  final scrollController = ScrollController();

  final offset = 0.0.obs;

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
    offset.value = scrollController.offset;
  }
}