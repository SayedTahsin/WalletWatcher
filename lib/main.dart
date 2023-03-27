// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:personal_expense_tracker/transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> transactions = [
    Transaction('t1', 'New Shoes', 69.99, DateTime.now()),
    Transaction('t2', 'Grosaries', 15.99, DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DEMO"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(5),
            child: Card(
              color: Colors.amber,
              elevation: 10,
              margin: EdgeInsets.all(10),
              child: Text(
                "Chart",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Column(
            children: transactions.map((e) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        e.amount.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      children: [
                        Text(e.title),
                        Text(e.dateTime.toString()),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
