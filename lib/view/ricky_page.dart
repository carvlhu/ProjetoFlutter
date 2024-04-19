/* ? - Conteúdo pode ser null */
import 'package:aplication_one/view/widgets/newScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Tela pode ser reconstruída - tem um setState
class RickyPage extends StatefulWidget {
  const RickyPage({super.key});

  @override
  State<RickyPage> createState() => _RickyPageState();
}

class _RickyPageState extends State<RickyPage> {
  String frase = "Entrar";
  bool showBlue = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Login"),
          SizedBox(height: 50),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: senhaController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              // Within the `FirstRoute` widget
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewScreen()),
                );
              },
              child: Text("New Screen...")),
          SizedBox(height: 40),
          Expanded(
            child: Container(
              width: 100,
              height: 50,
              color: Color.fromARGB(255, 192, 192, 192),
              child: Text(frase),
            ),
          ),
          if (showBlue)
            Expanded(
              child: Container(
                width: 100,
                height: 50,
                color: Color.fromARGB(255, 129, 129, 129),
                child: Text(frase),
              ),
            ),
          Expanded(
            child: Container(
              width: 100,
              height: 50,
              color: Color.fromARGB(255, 58, 58, 58),
              child: Text(frase),
            ),
          ),
          Text(emailController.text),
          Text(senhaController.text),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(emailController?.text);
          print(senhaController?.text);

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
