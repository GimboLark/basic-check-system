import 'package:flutter/material.dart';

class TatliSayfasi extends StatefulWidget {
  const TatliSayfasi({super.key});

  @override
  State<TatliSayfasi> createState() => _TatliSayfasiState();
}

class _TatliSayfasiState extends State<TatliSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const Row(
          children: [
            Text("tatli 1"),
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