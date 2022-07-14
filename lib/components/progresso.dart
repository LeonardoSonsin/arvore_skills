import 'package:flutter/material.dart';

class Progresso extends StatelessWidget {
  final int progressoLevel;

  const Progresso({
    required this.progressoLevel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (progressoLevel >= 1) ? Colors.yellow[900] : Colors.black26,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (progressoLevel >= 2) ? Colors.yellow[900] : Colors.black26,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (progressoLevel >= 3) ? Colors.yellow[900] : Colors.black26,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (progressoLevel >= 4) ? Colors.yellow[900] : Colors.black26,
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (progressoLevel >= 5) ? Colors.purple[900] : Colors.black26,
        ),
      ],
    );
  }
}
