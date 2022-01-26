// ignore_for_file: avoid_unused_constructor_parameters

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Calendario.dart';

class EnviarDados extends StatefulWidget {
  const EnviarDados({Key? key}) : super(key: key);

  @override
  State<EnviarDados> createState() {
    return _EnviarDadosState();
  }
}

class _EnviarDadosState extends State<EnviarDados> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    final Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
          appBar: AppBarFilho(
            height: size.height * 0.16,
          ),
          body: Column(
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
                height: 50,
              ),
              const ButtonEnviarDados(),
            ],
          )),
    );
  }
}

class AppBarFilho extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const AppBarFilho({
    Key? key,
    required this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AppBar(
      leadingWidth: 0,
      backgroundColor: Colors.white,
      title: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: LabelNomeAtivo(),
      ),
      toolbarHeight: size.height * 0.10,
      bottom: const TabBar(
        indicatorWeight: 8,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Color(0xFF004586),
        labelColor: Color(0xFF004586),
        padding: EdgeInsets.symmetric(horizontal: 20),
        tabs: [
          Tab(text: 'Temperatura'),
          Tab(text: 'Umidade'),
          Tab(text: 'Coordenadas'),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

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

class LabelNomeDosDados extends StatelessWidget {
  const LabelNomeDosDados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
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
              '+1.5 °C',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF1D1F23),
              ),
            ),
          ]),
    );
  }
}

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
