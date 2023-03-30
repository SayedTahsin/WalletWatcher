// ignore_for_file: prefer_const_constructors, unused_element, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:personal_expense_tracker/widgets/transaction_list.dart';

import '../models/transaction.dart';
import 'new_transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction('t1', 'New Shoes', 69.99, DateTime.now()),
    Transaction('t2', 'Grosaries', 15.99, DateTime.now()),
  ];
  void _addNewTransaction(String txTitle, double txAmounnt) {
    final newTx = Transaction(
        DateTime.now().toString(), txTitle, txAmounnt, DateTime.now());
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
