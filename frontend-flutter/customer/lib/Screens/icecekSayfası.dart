import 'package:flutter/material.dart';

class IcecekSayfasi extends StatefulWidget {
  const IcecekSayfasi({super.key});

  @override
  State<IcecekSayfasi> createState() => _IcecekSayfasiState();
}

class _IcecekSayfasiState extends State<IcecekSayfasi> {
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