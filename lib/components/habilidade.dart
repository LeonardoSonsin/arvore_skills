import 'package:flutter/material.dart';
import 'package:flutter_app1/components/progresso.dart';

// ignore: must_be_immutable
class Habilidade extends StatefulWidget {
  final String nome;
  final String imagem;
  int upgrade;
  int level;
  final Color cor;

  Habilidade(this.nome, this.imagem, this.upgrade, this.level, this.cor,
      {Key? key})
      : super(key: key);

  @override
  State<Habilidade> createState() => _HabilidadeState();
}

class _HabilidadeState extends State<Habilidade> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.black,
            ),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 5, color: Colors.black),
                            borderRadius: BorderRadius.circular(4),
                            color: widget.cor,
                          ),
                          width: 80,
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(
                              widget.imagem,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: const TextStyle(
                                fontSize: 24, overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        Progresso(progressoLevel: widget.upgrade),
                      ],
                    ),
                    Container(
                      child: (widget.upgrade == 5
                          ? ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'MAX',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          : widget.level == 10
                              ? ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      widget.upgrade++;
                                      widget.level = 0;
                                    });
                                  },
                                  child: const Text(
                                    'UP',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.red),
                                  ))
                              : ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      (widget.level == 10)
                                          ? widget.level = 0
                                          : widget.level++;
                                    });
                                  },
                                  child: const Icon(Icons.upgrade),
                                )),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: (widget.level > 0 ? widget.level / 10 : 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      (widget.upgrade == 5
                          ? 'Level: MAX'
                          : 'Level: ${widget.level}'),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
