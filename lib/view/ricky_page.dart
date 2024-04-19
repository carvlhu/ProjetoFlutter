import 'package:flutter/material.dart';

class RickyPage extends StatefulWidget {
  const RickyPage({super.key});

  @override
  State<RickyPage> createState() => _RickyPageState();
}

class _RickyPageState extends State<RickyPage> {
  String frase = "Entrar";
  bool showBlue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Login"),
          SizedBox(
            height: 50
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
          SizedBox(
            height: 20
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your username',
            ),
          ),
          SizedBox(
            height: 80
          ),
          Container(
            width: 100,
            height: 50,
            color: const Color.fromARGB(255, 67, 67, 67),
            child: Text(frase),
          ),
          if (showBlue)
            Container(
              width: 100,
              height: 50,
              color: const Color.fromARGB(255, 109, 109, 109),
              child: Text(frase),
            ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showBlue = !showBlue;
            frase = "Entrou";
          });
        },
        child: Text("Clique"),
      ),
    );
  }
}
