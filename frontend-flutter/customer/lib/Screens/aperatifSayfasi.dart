import 'package:flutter/material.dart';

class AperatifSayfasi extends StatefulWidget {
  const AperatifSayfasi({super.key});

  @override
  State<AperatifSayfasi> createState() => _AperatifSayfasiState();
}

class _AperatifSayfasiState extends State<AperatifSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const Row(
          children: [
            Text("icecek 1"),
          ],
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Geri dön"))
      ]),
    );
  }
}