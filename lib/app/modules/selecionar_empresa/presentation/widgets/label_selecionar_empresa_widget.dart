import 'dart:math';

import 'package:flutter/material.dart';

class LabelSelecionarEmpresa extends StatelessWidget {
  const LabelSelecionarEmpresa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Text(
            'Selecione a Empresa',
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Color(0xFFAAAFB9),
              fontSize: 20,
            ),
          ),
        ),
        Transform(
          alignment: Alignment.bottomRight,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(-pi),
          child: Padding(
            padding: const EdgeInsets.only(right: 40),
            child: IconButton(
              alignment: Alignment.bottomRight,
              icon: const Icon(Icons.sort),
              color: const Color(0xFF004586),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
