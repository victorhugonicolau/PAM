import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hoome"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ), // base copiar
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge, // para deixar a fonte do texto grende
              ),
              const SizedBox(
                width: 750,
                child: TextField(
                  // usado para formar formulario de tela de login
                  decoration: InputDecoration(
                    labelText: "Nome",
                  ),
                ),
              ),
              const SizedBox(
                width: 750,
                child: TextField(
                  // usado para formar formulario de tela de login
                  decoration: InputDecoration(
                    labelText: "Senha",
                  ),
                ),
              ),
              SizedBox(
                // esticar o conponente na altura/espessura
                width: 300,
                height: 60,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Entrar")),
                // o botão, () {} - uma função sem atribuição
              ),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // alinhar horizontal
                  children: [
                    Text('Esqueci senha'),
                    Text("    "),
                    Text('Cadastro'),
                  ],
                ),
              )
            ],
          ),
        ));
  }
} // sempre confira as consts para ver se vai funcionar 
