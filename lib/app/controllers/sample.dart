import 'package:get/get.dart';
import 'package:xlink/app/models/account.dart';
import 'package:xlink/app/models/sample.dart';

class SampleController extends GetxController {
  final sample = Get.arguments['parent'] as SampleModel;
  final account = Get.arguments['account'] as AccountModel?;
}