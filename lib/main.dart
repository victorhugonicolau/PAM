import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

// construtor da classe (construir a classe)
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

// controi que será renderizado
// exibido ao usuario
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home :D'),
        actions: [
          IconButton(
            onPressed: () => setState(() {}),
            icon: const Icon(Icons.refresh),
          )
        ],
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          children: [
            caixa(),
            caixa(),
            caixa(),
            caixa(),
          ],
        ),
      ),
    );
  }

  Widget caixa() {
    return SizedBox(
      width: 150,
      height: 150,
      child: Container(
        decoration: BoxDecoration(
          color: getColor(),
        ),
        child: const Center(
          child: Text("A"),
        ),
      ),
    );
  }

  Color getColor() {
    final rand = Random();
    return Color.fromARGB(
        255, rand.nextInt(256), rand.nextInt(256), rand.nextInt(256));
  }
}
