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
          title: const Text("Base - código cópia"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: const Padding( // descola da borda, era Column antes 
          padding: EdgeInsets.all(20),
          child: Column(
            // BASE PARA SE INIAR SEMPRE, SEMPRE SERA ESSE MODELO
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // ESPAÇO DAS COLUNAS UMA DA OUTRA NA VERTICAL (COLUNA)
            crossAxisAlignment: CrossAxisAlignment
                .start, // ESPAÇO DAS COLUNAS UMA DA OUTRA NA HORIZONTAL (COLUNA)
            children: [
              Text("Atividade"),
              Column(
                // children pos aceita varios
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nome: Victor Hugo Nicolau Castro :D"),
                  Text("Email: victor.castro29@etec.sp.gov.br"),
                  Text("Idade: 19 aninhos")
                ],
              ),
              Center(
                // child pos só aceita 1
                child: Text("13/03/2024"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("2H3"), Text("Matão - São Paulo - Brasil :D")],
              ),
            ],
          ),
        ));
  }
}
