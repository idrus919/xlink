import 'package:flutter/material.dart';
import 'package:xlink/app/constants/sample.dart';
import 'package:xlink/app/constants/themes.dart';
import 'package:xlink/app/widgets/sample.dart';

class TransactionView extends StatelessWidget {
  const TransactionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ListView.separated(
              shrinkWrap: true,
              padding: inset(),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final sample = Sample.list[index];
                return SampleWidget(sample: sample);
              },
              separatorBuilder: (context, index) => height(),
              itemCount: Sample.list.length,
            ),
          ),
        ],
      ),
    );
  }
}
