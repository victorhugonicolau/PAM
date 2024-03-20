import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Duas páginas"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Seja bem vindo!!"),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/menu"),
              child: const Text("Entrar!"),
            )
          ],
        ),
      ),
    );
  }
}
