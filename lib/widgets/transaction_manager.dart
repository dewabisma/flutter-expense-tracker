import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_history.dart';

import '../models/transaction.dart';

class TransactionManager extends StatefulWidget {
  @override
  State<TransactionManager> createState() => _TransactionManagerState();
}

class _TransactionManagerState extends State<TransactionManager> {
  final List<Transaction> _transactions = [
    Transaction(
        id: '1', title: 'New Jacket', amount: 10.00, date: DateTime.now()),
    Transaction(id: '2', title: 'Shoes', amount: 20.00, date: DateTime.now()),
    Transaction(
        id: '3', title: 'Paladium Sword', amount: 200.00, date: DateTime.now()),
  ];

  _addTransaction(String title, double amount) {
    var newTx = Transaction(
        id: (1).toString(), amount: amount, title: title, date: DateTime.now());

    setState(() {
      _transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionForm(_addTransaction),
        TransactionHistory(_transactions)
      ],
    );
  }
}
