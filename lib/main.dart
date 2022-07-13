import 'package:flutter/material.dart';
import './widgets/transaction_history.dart';
import './widgets/transaction_form.dart';
import './models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _transactions = [
    Transaction(
        id: '1', title: 'New Jacket', amount: 10.00, date: DateTime.now()),
    Transaction(id: '2', title: 'Shoes', amount: 20.00, date: DateTime.now()),
    Transaction(
        id: '3', title: 'Paladium Sword', amount: 200.00, date: DateTime.now()),
    Transaction(
        id: '4', title: 'Mitrhil Sword', amount: 150.00, date: DateTime.now()),
  ];

  void _addTransaction(String title, double amount) {
    final newTx = Transaction(
        id: (1).toString(), amount: amount, title: title, date: DateTime.now());

    setState(() {
      _transactions.add(newTx);
    });

    // print(_transactions.length);
  }

  void _startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
              onTap: () {},
              behavior: HitTestBehavior.opaque,
              child: TransactionForm(_addTransaction));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        actions: <Widget>[
          IconButton(
              onPressed: () => _startAddNewTransaction(context),
              icon: Icon(Icons.add))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _startAddNewTransaction(context),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            TransactionHistory(_transactions)
          ],
        ),
      ),
    );
  }
}
