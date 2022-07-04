import 'package:expense_tracker_flutter/widgets/transaction_manager.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense Tracker'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            TransactionManager()
          ],
        ),
      ),
    );
  }
}
