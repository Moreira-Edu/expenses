import 'package:flutter/material.dart';

class TransactionsForm extends StatelessWidget {
  final title = TextEditingController();
  final value = TextEditingController();
  TransactionsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: title,
              decoration: const InputDecoration(labelText: 'Título'),
            ),
            TextField(
              controller: value,
              decoration: const InputDecoration(labelText: 'Valor (R\$)'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    print(title);
                    print(value);
                  },
                  child: const Text(
                    'Nova Transação',
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
