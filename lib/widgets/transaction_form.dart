import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final Function addTransaction;

  TransactionForm(this.addTransaction);

  @override
  _TransactionFormState createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final title = TextEditingController();

  final amount = TextEditingController();

  void submitHandler() {
    final enteredTitle = title.text;
    final enteredAmount = double.parse(amount.text);

    if (enteredTitle.isEmpty || enteredAmount.isNaN || enteredAmount <= 0) {
      return;
    }

    widget.addTransaction(enteredTitle, enteredAmount);

    Navigator.of(context).pop();
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Title"),
            controller: title,
            keyboardType: TextInputType.name,
            onSubmitted: (_) => submitHandler(),
          ),
          TextField(
              decoration: InputDecoration(labelText: "Amount"),
              controller: amount,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitHandler()),
          FlatButton(
              child: Text(
                'Add Transaction',
                style: TextStyle(
                  color: Colors.purple,
                ),
              ),
              onPressed: submitHandler)
        ],
      ),
    );
  }
}
