class AccountModel {
  AccountModel(
      this.parentAccountNo,
      this.accountNo,
      this.balance,
      {required this.accounts}
      );

  String parentAccountNo;
  String accountNo;
  int balance;
  List<AccountModel> accounts;
}