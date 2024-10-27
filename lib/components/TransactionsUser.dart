import 'package:expenses/components/TransactionsForm.dart';
import 'package:expenses/components/TransactionsList.dart';
import 'package:expenses/models/Transactions.dart';
import 'package:flutter/material.dart';

class TransactionsUser extends StatefulWidget {
  TransactionsUser({super.key});

  @override
  State<TransactionsUser> createState() => _TransactionsUserState();
}

class _TransactionsUserState extends State<TransactionsUser> {
  @override
  Widget build(BuildContext context) {
    final _transactions = [
      Transactions(
        id: '124',
        date: DateTime.now(),
        title: 'Novo tênis dança',
        value: 1000,
      ),
      Transactions(
        id: '125',
        date: DateTime.now(),
        title: 'Consulta',
        value: 550,
      ),
    ];
    return Column(
      children: <Widget>[
        TransactionsList(_transactions),
        TransactionsForm(),
      ],
    );
  }
}
