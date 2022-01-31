import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Calendario.dart';
import 'View_EnviarDados.dart';

class EnviardadosUmidade extends StatefulWidget {
  const EnviardadosUmidade({Key? key}) : super(key: key);

  @override
  _EnviardadosTemperaturaState createState() => _EnviardadosTemperaturaState();
}

class _EnviardadosTemperaturaState extends State<EnviardadosUmidade> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: CalendarioState(
            initialDate: DateTime.now(),
            firstDate: DateTime(2021),
            lastDate: DateTime(2022, 12),
            onDateChanged: (DateTime value) {},
          ),
        ),
        const BotaoInformacoesTemperatura(),
        const SizedBox(
          height: 4,
        ),
        const LabelEnviarOsSeguintesdados(),
        const LabelNomeDosDados(),
        const RegistroDosDados(),
        const SizedBox(
          height: 45,
        ),
        const ButtonEnviarDados(),
      ],
    );
  }
}

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
          '+1.5 %RH',
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

class RegistroDosDados extends StatelessWidget {
  const RegistroDosDados({Key? key}) : super(key: key);

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
            Text(
              '+1.5 %RH',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF1D1F23),
              ),
            ),
          ]),
    );
  }
}
