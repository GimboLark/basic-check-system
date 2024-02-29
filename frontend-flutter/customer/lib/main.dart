import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Customer Page"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              butonParcalari(1),
              const SizedBox(
                width: 10,
              ),
              butonParcalari(2)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Expanded butonParcalari(int number) {
    Widget secilecekSayfa = const MainPage();
    switch (number) {
      case 1:
        secilecekSayfa = const TatliSayfasi();
        break;
      case 2:
        secilecekSayfa = const AnaYemekSayfasi();
    }
    return Expanded(
        child: TextButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => secilecekSayfa));
      },
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
      child: Text("masa $number"),
    ));
  }
}

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
