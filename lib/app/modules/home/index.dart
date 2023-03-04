import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:xlink/app/constants/color.dart';
import 'package:xlink/app/constants/icons.dart';
import 'package:xlink/app/constants/images.dart';
import 'package:xlink/app/constants/menu.dart';
import 'package:xlink/app/constants/sample.dart';
import 'package:xlink/app/constants/themes.dart';
import 'package:xlink/app/controllers/home.dart';
import 'package:xlink/app/widgets/inkwell.dart';
import 'package:xlink/app/widgets/menu.dart';
import 'package:xlink/app/widgets/sample.dart';
import 'package:xlink/routes/routes.dart';
import 'package:xlink/services/utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.find;

    return  Scaffold(
      body: CustomScrollView(
        controller: controller.scrollController,
        slivers: [
          appBar,
          wallet,
          menu,
          info,
          history,
        ],
      ),
    );
  }

  SliverAppBar get appBar {
    return SliverAppBar(
      pinned: true,
      centerTitle: false,
      toolbarHeight: 78,
      title: Text(
        'Mobile Banking',
        style: TextStyle(
          foreground: Paint()..shader = const LinearGradient(
            colors: [
              primaryColor,
              primaryDarkColor,
            ],
          ).createShader(
            const Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)
          ),
        ),
      ),
      backgroundColor: whiteColor,
      actions: [
        IconButton(
          onPressed: () => Get.toNamed(Routes.transaction),
          icon: SvgPicture.asset(billIcon),
        ),
      ],
    );
  }

  SliverToBoxAdapter get wallet {
    final balances = Sample.list.map((e) {
      final balanceAccounts = e.accounts.map((e) => e.balance).toList();
      final total = balanceAccounts.reduce((a, b) => a + b);
      return total;
    }).toList();
    final total = balances.reduce((a, b) => a + b);
    return SliverToBoxAdapter(
      child: Container(
        padding: inset(),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            bottom: radiusEliptical(32, 16),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Your balance'),
                  Text(
                    '\$ ${Utils.currency(total)}',
                    style: Get.textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  height(),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              transferIcon,
                              width: 20,
                              colorFilter: const ColorFilter.mode(
                                whiteColor,
                                BlendMode.srcIn,
                              ),
                            ),
                            width(8),
                            const Text('Transfer'),
                          ],
                        ),
                      ),
                      width(4),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              requestIcon,
                              width: 20,
                              colorFilter: const ColorFilter.mode(
                                whiteColor,
                                BlendMode.srcIn,
                              ),
                            ),
                            width(8),
                            const Text('Request'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Opacity(
              opacity: 0.3,
              child: SvgPicture.asset(bankIcon),
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter get menu {
    return SliverToBoxAdapter(
      child: Padding(
        padding: insetVertical(),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MenuWidget(menu: payMenu),
                width(4),
                MenuWidget(menu: insuranceMenu),
                width(4),
                MenuWidget(menu: investmentMenu),
                width(4),
                MenuWidget(menu: withdrawMenu),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  SliverToBoxAdapter get info {
    return SliverToBoxAdapter(
      child: Padding(
        padding: insetHorizontal(),
        child: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: borderRadius(12),
          ),
          child: Center(
            child: Image.asset(shoppingImage, scale: 2)
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter get history {
    return SliverToBoxAdapter(
      child: Padding(
        padding: inset(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: Get.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
                ),
                InkWellWidget(
                  onTap: () => Get.toNamed(Routes.transaction),
                  child: const Text('See all'),
                ),
              ],
            ),
            height(12),
            ListView.separated(
              shrinkWrap: true,
              padding: inset(0),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final sample = Sample.list[index];
                return SampleWidget(sample: sample);
              },
              separatorBuilder: (context, index) => height(),
              itemCount: Sample.list.length,
            ),
          ],
        ),
      ),
    );
  }
}
