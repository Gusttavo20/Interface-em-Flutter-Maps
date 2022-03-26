import 'dart:math';

import 'package:flutter/material.dart';

class LabelNomeAtivo extends StatelessWidget {
  const LabelNomeAtivo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color(0xFF004586),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const Text(
          '[Nome do Ativo]',
          style: TextStyle(
            color: Color(0xFF004586),
            fontSize: 20,
          ),
        ),
        Transform(
          alignment: Alignment.topLeft,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(-pi),
        ),
      ],
    );
  }
}
