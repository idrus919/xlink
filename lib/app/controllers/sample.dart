import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xlink/app/models/account.dart';
import 'package:xlink/app/models/sample.dart';

class SampleController extends GetxController {
  static SampleController get find => Get.find();

  final argument = Get.arguments as SampleModel;
  final sample = Rxn<SampleModel>();
  final account = Rxn<AccountModel>();

  @override
  void onInit() {
    setSample(argument);
    super.onInit();
  }

  void setSample(SampleModel? value) {
    sample.value = value;
    sample.refresh();
    setAccount(sample.value?.accounts.first);
  }

  void setAccount(AccountModel? value) {
    value?.accounts = getChildren(value?.accountNo);
    account.value = value;
    account.refresh();
  }

  List<AccountModel> getChildren(String? accountNo) {
    final items = sample.value?.accounts ?? [];
    final accounts = items.where((e) => e.parentAccountNo == accountNo).toList();

    for (int i = 0; i < accounts.length; i++) {
      // get object's children, recursively
      final children = getChildren(accounts[i].accountNo);

      // set children
      accounts[i].accounts = children;
    }

    accounts.sort((a, b) => a.accountNo.compareTo(b.accountNo));
    return accounts;
  }

  int getTotalBalance(AccountModel? account) {
    final items = sample.value?.accounts ?? [];
    final accounts = items.where((e) => e.parentAccountNo == account?.accountNo).toList();
    int total = 0;

    if (accounts.isEmpty) {
      total = account?.balance ?? 0;
    }
    else {
      for (int i = 0; i < accounts.length; i++) {
        final account = accounts[i];
        if (account.accounts.isEmpty) {
          total += account.balance;
        }
        else {
          final totalFromChildren = getTotalBalance(accounts[i]);
          total += totalFromChildren;
        }
      }
    }

    return total;
  }
}