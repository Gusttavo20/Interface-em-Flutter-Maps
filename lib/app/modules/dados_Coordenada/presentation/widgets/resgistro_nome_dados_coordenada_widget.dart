import 'package:flutter/material.dart';

class RegistroDosDadosCoordenadas extends StatelessWidget {
  const RegistroDosDadosCoordenadas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              '7',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF1D1F23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                '25/01/2022',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1D1F23),
                ),
              ),
            ),
          ]),
    );
  }
}
