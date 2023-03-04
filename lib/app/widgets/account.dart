import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xlink/app/constants/color.dart';
import 'package:xlink/app/constants/themes.dart';
import 'package:xlink/app/controllers/sample.dart';
import 'package:xlink/app/models/account.dart';
import 'package:xlink/services/utils.dart';

class AccountWidget extends StatelessWidget {
  final AccountModel? account;
  const AccountWidget({Key? key, this.account}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final accounts = account?.accounts ?? [];
    final total = SampleController.find.getTotalBalance(account);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: inset(8),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: borderRadius(4),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  '+ Acc: ${account?.accountNo} = \$ ${Utils.currency(total)}',
                  style: Get.textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
              if (accounts.isNotEmpty) ...[
                const Icon(Icons.expand_more, size: 16),
              ],
            ],
          ),
        ),
        if (accounts.isNotEmpty) ...[
          height(8),
          ListView.separated(
            shrinkWrap: true,
            padding: insetLTRB(24, 0, 0, 0),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final account = accounts[index];
              return AccountWidget(account: account);
            },
            separatorBuilder: (context, index) => height(8),
            itemCount: accounts.length,
          ),
        ],
      ],
    );
  }
}
