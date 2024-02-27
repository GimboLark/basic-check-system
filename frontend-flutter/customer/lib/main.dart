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
          title: Text("Customer Page"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: MainPage(),
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
          SizedBox(height: 10,),
          Row(
            children: [
              butonParcalari("1"),
              SizedBox(
                width: 10,
              ),
              butonParcalari("2")
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              butonParcalari("3"),
              SizedBox(width: 10,),
              butonParcalari("4")
            ],
          )
        ],
      ),
    );
  }

  Expanded butonParcalari(String number) {
    return Expanded(
        child: TextButton(
      onPressed: () {
        Placeholder;
      },
      child: Text("masa $number"),
      style:
          ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
    ));
  }
}
