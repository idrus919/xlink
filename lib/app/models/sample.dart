import 'package:xlink/app/models/account.dart';

class SampleModel {
  SampleModel({
    required this.name,
    required this.no,
    required this.accounts,
  });

  final String name;
  final String no;
  List<AccountModel> accounts;
}