import 'package:flutter/material.dart';

class LabelEnviarOsSeguintesdados extends StatelessWidget {
  const LabelEnviarOsSeguintesdados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 24, top: 14),
          child: Text(
            'Enviando os seguintes dados',
            style: TextStyle(
              color: Color(0xFF004586),
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
