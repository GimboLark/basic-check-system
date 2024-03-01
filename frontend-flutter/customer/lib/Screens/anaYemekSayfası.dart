import 'package:flutter/material.dart';

class AnaYemekSayfasi extends StatefulWidget {
  const AnaYemekSayfasi({super.key});

  @override
  State<AnaYemekSayfasi> createState() => _AnaYemekSayfasiState();
}

class _AnaYemekSayfasiState extends State<AnaYemekSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const Row(
          children: [
            Text("Ana Yemek 1"),
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