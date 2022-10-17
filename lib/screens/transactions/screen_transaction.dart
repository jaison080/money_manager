import 'package:flutter/material.dart';
import 'package:money_manager/screens/transactions/widgets/transaction_tile.dart';

class ScreenTransaction extends StatelessWidget {
  const ScreenTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (ctx, index) {
          return const TransactionTile(
                  transactionDate:"12 \nDec" ,
                  transactionTitle: "Rs.1000",
                  transactionSubtitle: "Travel",);
        },
        separatorBuilder: (ctx, index) {
          return const SizedBox(
            height: 10,
          );
        },
        itemCount: 10);
  }
}


