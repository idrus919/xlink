import 'package:get/get.dart';
import 'package:xlink/app/controllers/home.dart';
import 'package:xlink/app/controllers/sample.dart';
import 'package:xlink/app/modules/home/index.dart';
import 'package:xlink/app/modules/sample/index.dart';
import 'package:xlink/app/modules/transaction/index.dart';
import 'package:xlink/routes/paths.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: Paths.main,
      page: () => const HomeView(),
      binding: BindingsBuilder(
            () => {Get.put(HomeController())},
      ),
      children: [
        GetPage(
          name: Paths.transaction,
          page: () => const TransactionView(),
        ),
        GetPage(
          name: Paths.sample,
          page: () => const SampleView(),
          binding: BindingsBuilder(
                () => {Get.put(SampleController())},
          ),
        ),
      ],
    ),
  ];
}