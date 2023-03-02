import 'package:get/get.dart';
import 'package:xlink/app/modules/home/index.dart';
import 'package:xlink/routes/routes.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: Routes.main,
      page: () => const HomeView(),
    ),
  ];
}