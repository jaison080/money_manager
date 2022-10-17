import 'package:flutter/material.dart';
class TransactionTile extends StatelessWidget {

final String transactionDate,transactionTitle,transactionSubtitle;

const TransactionTile({Key? key, 
    required this.transactionDate,
    required this.transactionTitle,
    required this.transactionSubtitle
      }) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: CircleAvatar(
          radius: 50,
          child: Text(transactionDate, textAlign: TextAlign.center),
        ),
        title: Text(transactionTitle),
        subtitle: Text(transactionSubtitle),
      ),
    );
  }
}