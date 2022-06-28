import 'package:flutter/material.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: '1', title: 'New Jacket', amount: 10.00, date: DateTime.now()),
    Transaction(id: '2', title: 'Shoes', amount: 20.00, date: DateTime.now()),
    Transaction(
        id: '3', title: 'Paladium Sword', amount: 200.00, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense Tracker'),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(20),
              child: Card(
                color: Colors.blue,
                elevation: 2,
                child: Text(
                  'Chart Here',
                  style: TextStyle(
                      backgroundColor: Colors.transparent, color: Colors.white),
                ),
              ),
            ),
            ...transactions
                .map(
                  (tx) => Card(
                    child: Row(
                      children: [
                        Container(
                          child: Text(tx.amount.toString()),
                        ),
                        Column(
                          children: [Text(tx.title!), Text(tx.date.toString())],
                        )
                      ],
                    ),
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
