import 'package:expense_tracker_flutter/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionHistory extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionHistory(this.transactions);

  Widget build(BuildContext context) {
    return Column(
      children: [
        ...transactions
            .map(
              (tx) => Card(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2.0)),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$${tx.amount.toString()}',
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tx.title!,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 26)),
                        Text(DateFormat.yMMMMd().format(tx.date!),
                            style: TextStyle(color: Colors.grey))
                      ],
                    )
                  ],
                ),
              ),
            )
            .toList()
      ],
    );
  }
}
