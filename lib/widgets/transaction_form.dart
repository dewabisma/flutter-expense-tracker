import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final Function addTransaction;
  final title = TextEditingController();
  final amount = TextEditingController();

  TransactionForm(this.addTransaction);

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Title"),
            controller: title,
          ),
          TextField(
            decoration: InputDecoration(labelText: "Amount"),
            controller: amount,
          ),
          FlatButton(
            child: Text(
              'Add Transaction',
              style: TextStyle(
                color: Colors.purple,
              ),
            ),
            onPressed: () =>
                addTransaction(title.text, double.parse(amount.text)),
          )
        ],
      ),
    );
  }
}
