import 'package:flutter/material.dart';

class LabelNomeDosDados extends StatelessWidget {
  const LabelNomeDosDados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Sensor',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF1D1F23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Data',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1D1F23),
                ),
              ),
            ),
            Text(
              'Temperatura',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF1D1F23),
              ),
            ),
          ]),
    );
  }
}
