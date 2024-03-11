import 'package:flutter/material.dart';

void main() {
  runApp(const Prova());
}

class Prova extends StatelessWidget {
  const Prova({super.key});

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
        title: const Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Atividade"),
                Text("Avaliativa"),
              ],
            ),
            Column(
              children: [
                Text("Victor Hugo"),
                Text("Victor.gg@gmail.com"),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("2H3"),
                    Text("Matão"),
                  ],
                ),
                Text("2024"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
