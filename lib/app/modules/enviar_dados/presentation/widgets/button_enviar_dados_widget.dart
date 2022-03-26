import 'package:flutter/material.dart';

class ButtonEnviarDados extends StatelessWidget {
  const ButtonEnviarDados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.060,
      width: size.width * 0.500,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: const Color(0xFF004586),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Enviar Dados',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
