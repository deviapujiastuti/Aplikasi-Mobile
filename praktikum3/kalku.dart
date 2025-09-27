import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasi Kalkulator Sederhana'),
        ),
        body: const CalculatorForm(),
      ),
    );
  }
}

class CalculatorForm extends StatefulWidget {
  const CalculatorForm({super.key});

  @override
  State<CalculatorForm> createState() => _CalculatorFormState();
}

class _CalculatorFormState extends State<CalculatorForm> {
  final _formKey = GlobalKey<FormState>();
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  double _result = 0.0;
  String _operation = '';

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    super.dispose();
  }

  void _calculate(String operation) {
    if (_formKey.currentState!.validate()) {
      double num1 = double.parse(_controller1.text);
      double num2 = double.parse(_controller2.text);
      double result;

      setState(() {
        _operation = operation;
        switch (operation) {
          case '+':
            result = num1 + num2;
            break;
          case '-':
            result = num1 - num2;
            break;
          case 'x':
            result = num1 * num2;
            break;
          case '/':
            if (num2 != 0) {
              result = num1 / num2;
            } else {
              // Menampilkan pesan error jika pembagian dengan nol
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Error: Pembagian dengan nol tidak diizinkan')),
              );
              return;
            }
            break;
          default:
            result = 0;
        }
        _result = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              controller: _controller1,
              decoration: const InputDecoration(
                labelText: 'Nilai Pertama',
                border: OutlineInputBorder(),
              ),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Masukkan angka';
                }
                if (double.tryParse(value) == null) {
                  return 'Masukkan angka yang valid';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _controller2,
              decoration: const InputDecoration(
                labelText: 'Nilai Kedua',
                border: OutlineInputBorder(),
              ),
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Masukkan angka';
                }
                if (double.tryParse(value) == null) {
                  return 'Masukkan angka yang valid';
                }
                return null;
              },
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () => _calculate('+'), child: const Text('+')),
                ElevatedButton(onPressed: () => _calculate('-'), child: const Text('-')),
                ElevatedButton(onPressed: () => _calculate('x'), child: const Text('x')),
                ElevatedButton(onPressed: () => _calculate('/'), child: const Text('/')),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              _operation.isEmpty
                  ? 'Hasil: '
                  : 'Hasil: $_result',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}