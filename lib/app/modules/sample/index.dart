import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xlink/app/constants/color.dart';
import 'package:xlink/app/constants/dropdown.dart';
import 'package:xlink/app/constants/themes.dart';
import 'package:xlink/app/controllers/sample.dart';
import 'package:xlink/app/widgets/account.dart';

class SampleView extends StatelessWidget {
  const SampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Balance Aggregator'),
        systemOverlayStyle: uiDark,
      ),
      body: CustomScrollView(
        slivers: [
          sample,
          account,
          list,
        ],
      ),
    );
  }

  SliverToBoxAdapter get sample {
    final controller = SampleController.find;
    return SliverToBoxAdapter(
      child: Obx(() {
        final sample = controller.sample.value;
        return Padding(
          padding: inset(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Sample',
                style: Get.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              DropdownButton(
                items: Dropdown.samples,
                value: sample,
                isExpanded: true,
                style: Get.textTheme.bodyLarge?.copyWith(
                  color: primaryDarkColor,
                  fontWeight: FontWeight.w700,
                ),
                icon: const Icon(Icons.expand_more),
                onChanged: (value) => controller.setSample(value),
              ),
            ],
          ),
        );
      }),
    );
  }

  SliverToBoxAdapter get account {
    final controller = SampleController.find;
    return SliverToBoxAdapter(
      child: Obx(() {
        final account = controller.account.value;
        final sample = controller.sample.value;

        return Padding(
          padding: inset(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Account',
                style: Get.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              DropdownButton(
                items: Dropdown.accounts(sample),
                value: (account?.parentAccountNo ?? '').isEmpty ? null : account,
                hint: Text(account?.accountNo ?? ''),
                style: Get.textTheme.bodyLarge?.copyWith(
                  color: primaryDarkColor,
                  fontWeight: FontWeight.w700,
                ),
                isExpanded: true,
                icon: const Icon(Icons.expand_more),
                onChanged: (value) => controller.setAccount(value),
              ),
            ],
          ),
        );
      }),
    );
  }

  SliverToBoxAdapter get list {
    final controller = SampleController.find;
    return SliverToBoxAdapter(
      child: Padding(
        padding: inset(),
        child: Obx(() {
          final account = controller.account.value;
          return AccountWidget(account: account);
        }),
      ),
    );
  }
}
