import 'package:flutter/material.dart';

class TransactionsForm extends StatefulWidget {
  final void Function(String, double) onSubmit;
  TransactionsForm(this.onSubmit, {super.key});

  @override
  State<TransactionsForm> createState() => _TransactionsFormState();
}

class _TransactionsFormState extends State<TransactionsForm> {
  final title = TextEditingController();

  final value = TextEditingController();

  _submitForm() {
    final newTitle = title.text;
    final newValue = double.tryParse(value.text) ?? 0.0;

    if (newTitle.isEmpty || newValue <= 0) {
      return;
    }

    widget.onSubmit(
      newTitle,
      newValue,
    );
  }

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
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (value) => _submitForm(),
              controller: value,
              decoration: const InputDecoration(labelText: 'Valor (R\$)'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: _submitForm,
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
