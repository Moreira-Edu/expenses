import 'package:expenses/components/TransactionsForm.dart';
import 'package:expenses/components/TranscationsLists.dart';
import 'package:expenses/models/Transactions.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Card(
            color: Colors.amber,
            child: Text('Gráfico'),
            elevation: 5,
          ),
          TransactionsList(_transactions),
          TransactionsForm(),
        ],
      ),
    );
  }
}
