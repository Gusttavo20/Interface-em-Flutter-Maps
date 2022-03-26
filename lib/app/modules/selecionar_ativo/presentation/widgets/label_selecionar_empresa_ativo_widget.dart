import 'dart:math';

import 'package:flutter/material.dart';

class LabelSelecionarEmpresaAtivo extends StatelessWidget {
  const LabelSelecionarEmpresaAtivo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.indigo[900],
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            'Selecione o Ativo',
            style: TextStyle(
              color: Color(0xFF004586),
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
            padding: const EdgeInsets.only(right: 28),
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
