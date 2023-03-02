import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xlink/app/constants/themes.dart';
import 'package:xlink/app/models/menu.dart';
import 'package:xlink/app/widgets/inkwell.dart';

class MenuWidget extends StatelessWidget {
  final MenuModel menu;
  const MenuWidget({Key? key, required this.menu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: () {},
      padding: inset(12),
      radius: borderRadius(),
      child: Column(
        children: [
          Image.asset(menu.image, scale: 3),
          height(4),
          Text(
            menu.title,
            style: Get.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
