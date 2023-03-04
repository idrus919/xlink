import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:xlink/app/constants/color.dart';
import 'package:xlink/app/constants/icons.dart';
import 'package:xlink/app/constants/themes.dart';
import 'package:xlink/app/models/sample.dart';
import 'package:xlink/app/widgets/inkwell.dart';
import 'package:xlink/routes/routes.dart';
import 'package:xlink/services/utils.dart';

class SampleWidget extends StatelessWidget {
  final SampleModel sample;
  const SampleWidget({Key? key, required this.sample}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final balances = sample.accounts.map((e) => e.balance).toList();
    final total = balances.reduce((a, b) => a + b);

    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: borderRadius(4),
      ),
      child: InkWellWidget(
        onTap: () {
          Get.toNamed(
            Routes.sample,
            arguments: sample,
          );
        },
        padding: inset(),
        radius: borderRadius(4),
        child: Row(
          children: [
            SvgPicture.asset(billIcon, width: 32),
            width(12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sample.name,
                    style: Get.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  height(4),
                  Text(
                    sample.no,
                    style: Get.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Text(
              '\$ ${Utils.currency(total)}',
              style: Get.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
