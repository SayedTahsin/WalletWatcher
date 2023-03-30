// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  // const TransactionList({super.key});
  final List<Transaction> transactions;

  const TransactionList(this.transactions, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: transactions.map((e) {
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.deepPurple)),
                    padding: EdgeInsets.all(5),
                    child: Text(
                      '\$${e.amount}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        DateFormat.yMMMMd().format(e.dateTime),
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
