import 'package:flutter/material.dart';

class BotaoInformacoesTemperatura extends StatelessWidget {
  const BotaoInformacoesTemperatura({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.060,
      width: size.width * 0.875,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFDFEAF5),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF004586),
                fixedSize: const Size(48, 48),
                minimumSize: const Size(10, 48),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                '-1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF004586),
                fixedSize: const Size(48, 48),
                minimumSize: const Size(10, 48),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                '-0.5',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        const Text(
          '+1.5 °C',
          style: TextStyle(
            color: Color(0xFF004586),
            fontSize: 16,
          ),
        ),
        Row(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF004586),
                fixedSize: const Size(48, 48),
                minimumSize: const Size(10, 48),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                '+0.5',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF004586),
                fixedSize: const Size(48, 48),
                minimumSize: const Size(10, 48),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                '+1',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
