import 'package:expense_tracker_flutter/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionHistory extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionHistory(this.transactions);

  @override
  Widget build(BuildContext context) {
    print(transactions.length);

    return Container(
      height: 250,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 2.0)),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '\$${transactions[index].amount!.toStringAsFixed(2)}',
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.bold),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(transactions[index].title!,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26)),
                    Text(DateFormat.yMMMMd().format(transactions[index].date!),
                        style: TextStyle(color: Colors.grey))
                  ],
                )
              ],
            ),
          );
        },
        itemCount: transactions.length,
      ),
    );
  }
}
