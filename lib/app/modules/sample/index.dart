import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xlink/app/controllers/sample.dart';

class SampleView extends StatelessWidget {
  const SampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Balance Aggregator'),
      ),
      body: CustomScrollView(),
    );
  }
}
