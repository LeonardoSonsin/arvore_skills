import 'package:flutter/material.dart';

import '../components/habilidade.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  int progresso = 0;
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  nivel = 0;
                  progresso = 0;
                });
              },
              icon: const Icon(Icons.replay)),
        ],
        title: const Text('Árvore de Habilidades'),
        centerTitle: true,
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: Container(
          color: Colors.grey,
          child: ListView(
            children: [
              Habilidade(
                  'Ataque',
                  'assets/images/ataque.png',
                  progresso,
                  nivel,
                  Colors.red),
              Habilidade(
                  'Defesa',
                  'assets/images/defesa.png',
                  progresso,
                  nivel,
                  Colors.blue),
              Habilidade(
                  'Vigor',
                  'assets/images/vigor.png',
                  progresso,
                  nivel,
                  Colors.green),
              Habilidade(
                  'Destreza',
                  'assets/images/destreza.png',
                  progresso,
                  nivel,
                  Colors.purple),
              Habilidade(
                  'Magia',
                  'assets/images/magia.png',
                  progresso,
                  nivel,
                  Colors.yellow),
              Habilidade(
                  'Velocidade',
                  'assets/images/velocidade.png',
                  progresso,
                  nivel,
                  Colors.pink),
              const SizedBox(height: 80,)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: opacidade == false
            ? const Icon(Icons.remove_red_eye)
            : const Icon(Icons.remove),
      ),
    );
  }
}
