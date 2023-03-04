// **** **** **** **** START OF DOCUMENT **** **** **** ****
//
// This document is ended when you encounter “END OF DOCUMENT”.
//
// X/Link Software
// Flutter Developer Remote Coding Assignment
//
// By reading this document, you are agreed to securely keep this document, and will not distribute it to others.
// If you do not agree, please stop reading and delete this document.

// 1.	General information:
//    a.	Code must be completed within 1 week since receiving remote code assignment.
//    b.	When completed, compress final folder that contain Project, Source Code and GIT History using ZIP or RAR.
//    c.	Email compressed folder to ahsaputro@infolink.co.id.
// 2.	Technical Information:
//    a.	Assignment must be developed using flutter/dart.
//    b.	Assignment must be coded using Android Studio, minimum version Electric Eel 2022.1.1.
//    c.	Development must be committed into GIT source control for every new feature added or every bug fixed for historical review.
//    d.	Code must be compileable without any error.
//    e.	Code must be runnable in android according to specification provided in Assignment One and Assignment Two.

// Data source:
//   i.	Sample data are provided in dart code in file “sample.dart” (this file).
//  ii.	Use the data provided in “sample.dart” to populate selection inside combobox, and draw tree in textbox.
// iii.	You must use “sample.dart”.
//  iv.	You may not ignore “sample.dart”.
//   v.	You may not alter any code inside “sample.dart”.
//  vi.	The populated combobox and generated tree in textbox must be sourced from “sample.dart”.

import 'package:xlink/app/models/account.dart';
import 'package:xlink/app/models/sample.dart';

class Sample {
  static List<SampleModel> list = [
    SampleModel(
      name: "Accounts Sample 1",
      no: "0000",
      accounts: [
        AccountModel("", "0000", 0, accounts: []),
        AccountModel("0000", "0001", 1, accounts: []),
        AccountModel("0000", "0002", 2, accounts: []),
      ],
    ),
    SampleModel(
      name: "Accounts Sample 2",
      no: "0000",
      accounts: [
        AccountModel("", "0000", 0, accounts: []),
        AccountModel("0000", "0001", 0, accounts: []),
        AccountModel("0001", "0002", 0, accounts: []),
        AccountModel("0002", "0003", 0, accounts: []),
        AccountModel("0003", "0004", 4, accounts: []),
      ],
    ),
    SampleModel(
      name: "Accounts Sample 3",
      no: "0000",
      accounts: [
        AccountModel("", "0000", 0, accounts: []),
        AccountModel("0000", "0001", 0, accounts: []),
        AccountModel("0001", "0002", 20, accounts: []),
        AccountModel("0001", "0003", 30, accounts: []),
        AccountModel("0000", "0004", 0, accounts: []),
        AccountModel("0004", "0005", 50, accounts: []),
        AccountModel("0004", "0006", 0, accounts: []),
        AccountModel("0006", "0007", 0, accounts: []),
        AccountModel("0007", "0008", 80, accounts: []),
        AccountModel("0007", "0009", 90, accounts: []),
      ],
    ),
    SampleModel(
      name: "Accounts Sample 4",
      no: "000000",
      accounts: [
        AccountModel("", "000000", 0, accounts: []),
        AccountModel("000008", "000083", 83000, accounts: []),
        AccountModel("000008", "000082", 82000, accounts: []),
        AccountModel("000000", "000001", 0, accounts: []),
        AccountModel("000001", "000011", 0, accounts: []),
        AccountModel("000011", "000111", 111000, accounts: []),
        AccountModel("000011", "000112", 0, accounts: []),
        AccountModel("000112", "001121", 1121000, accounts: []),
        AccountModel("000112", "001122", 1122000, accounts: []),
        AccountModel("000112", "000004", 4000, accounts: []),
        AccountModel("000011", "000113", 113000, accounts: []),
        AccountModel("000092", "000921", 921000, accounts: []),
        AccountModel("000009", "000091", 91000, accounts: []),
        AccountModel("000009", "000092", 0, accounts: []),
        AccountModel("000002", "000009", 0, accounts: []),
        AccountModel("000001", "000012", 12000, accounts: []),
        AccountModel("000001", "000005", 5, accounts: []),
        AccountModel("000000", "000002", 0, accounts: []),
        AccountModel("000002", "000021", 21000, accounts: []),
        AccountModel("000002", "000022", 22000, accounts: []),
        AccountModel("000002", "000006", 0, accounts: []),
        AccountModel("000006", "000061", 0, accounts: []),
        AccountModel("000061", "000611", 0, accounts: []),
        AccountModel("000611", "006111", 6111000, accounts: []),
        AccountModel("000002", "000007", 7000, accounts: []),
        AccountModel("000009", "000008", 8000, accounts: []),
        AccountModel("000008", "000081", 81000,accounts: [] ),
      ],
    ),
    SampleModel(
      name: "Accounts Sample 5",
      no: "0",
      accounts: [
        AccountModel("", "0", 0, accounts: []),
        AccountModel("0", "1", 0, accounts: []),
        AccountModel("1", "11", 0, accounts: []),
        AccountModel("11", "111", 0, accounts: []),
        AccountModel("111", "1111", 1111, accounts: []),
        AccountModel("111", "1112", 1112, accounts: []),
        AccountModel("11", "112", 0, accounts: []),
        AccountModel("112", "1121", 1121, accounts: []),
        AccountModel("112", "1122", 1122, accounts: []),
        AccountModel("1", "12", 0, accounts: []),
        AccountModel("12", "121", 121, accounts: []),
        AccountModel("12", "122", 122, accounts: []),
        AccountModel("0", "2", 0, accounts: []),
        AccountModel("2", "21", 0, accounts: []),
        AccountModel("21", "211", 211, accounts: []),
        AccountModel("21", "212", 212, accounts: []),
        AccountModel("2", "22", 0, accounts: []),
        AccountModel("22", "221", 221, accounts: []),
        AccountModel("22", "222", 222, accounts: []),
      ],
    ),
  ];
}

//GOOD LUCK, AND HAPPY CODING!!!! 

// Copyright P.T. Metalogix Infolink Persada, February 2023.
// **** **** **** **** END OF DOCUMENT **** **** **** ****
