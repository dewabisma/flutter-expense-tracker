import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(labelText: "Title"),
          ),
          TextField(
            decoration: InputDecoration(labelText: "Amount"),
          ),
          FlatButton(
            child: Text(
              'Add Transaction',
              style: TextStyle(
                color: Colors.purple,
              ),
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
