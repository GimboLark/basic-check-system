import 'package:customer/Screens/anaYemekSayfas%C4%B1.dart';
import 'package:flutter/material.dart';
import 'Screens/aperatifSayfasi.dart';
import 'Screens/icecekSayfası.dart';
import 'Screens/tatliSayfası.dart';

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
          title: const Text("Cerciler Restourant"),
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
    String yemekIsmi = "Default";
    switch (number) {
      case 1:
        yemekIsmi = "Tatlılar";
        secilecekSayfa = const TatliSayfasi();
        break;
      case 2:
        yemekIsmi = "Ana Yemekler";
        secilecekSayfa = const AnaYemekSayfasi();
        break;
      case 3:
        yemekIsmi = "Aperatifler";
        secilecekSayfa = const AperatifSayfasi();
        break;
      case 4:
        yemekIsmi = "İçecekler";
        secilecekSayfa = const IcecekSayfasi();
        break;
    }
    return Expanded(
        child: TextButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => secilecekSayfa));
      },
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
      child: Text(yemekIsmi),
    ));
  }
}




