import 'package:flutter/material.dart';
import 'package:xlink/app/constants/sample.dart';
import 'package:xlink/app/controllers/sample.dart';
import 'package:xlink/app/models/account.dart';
import 'package:xlink/app/models/sample.dart';

class Dropdown {
  static List<DropdownMenuItem<SampleModel>> get samples {
    final result = Sample.list.map((e) {
      final item = DropdownMenuItem<SampleModel>(
        value: e,
        child: Text(e.name)
      );
      return item;
    }).toList();
    return result;
  }

  static List<DropdownMenuItem<AccountModel>> accounts(SampleModel? sample) {
    final accounts = sample?.accounts ?? [];
    final controller = SampleController.find;
    List<AccountModel> list = [];
    for (var e in accounts) {
      final result = controller.getChildren(e.accountNo);
      if (result.length > 1) {
        list.add(e);
      }
    }

    final result = list.map((e) {
      final item = DropdownMenuItem<AccountModel>(
        value: e,
        child: Text(e.accountNo ?? '')
      );
      return item;
    }).toList();
    return result;
  }
}