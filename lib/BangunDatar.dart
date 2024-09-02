import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutterhooks/widget/myTextfield.dart';
import 'package:go_router/go_router.dart';

class BangunDatar extends HookWidget {
  final String nama;

  const BangunDatar({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    final sisiController = useTextEditingController();
    final result = useState<double?>(null);

    void calculatePower() {
      final sisi = double.tryParse(sisiController.text);
      if (sisi != null) {
        result.value = sisi * sisi;
      } else {
        result.value = null;
      }
    }

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_left),
            onPressed: () {
              context.go('/');
            },
          ),
        ],
        title: Text('Perpangkatan Calculator - $nama'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 48.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              child: MyTextField(
                Label: "Masukan Sisi",
                controller: sisiController,
                HintText: "Sisi Persegi",
              ),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: calculatePower,
              child: const Text("Hitung Luas"),
            ),
            const SizedBox(height: 20),
            if (result.value != null)
              Text(
                "Hasil: ${result.value}",
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}
