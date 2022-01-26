import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'View_Selecionar_Empresa.dart';

class SelecionarAtivo extends StatefulWidget {
  const SelecionarAtivo({Key? key}) : super(key: key);
  @override
  State<SelecionarAtivo> createState() {
    return _SelecionarAtivoState();
  }
}

class _SelecionarAtivoState extends State<SelecionarAtivo> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarFilho(
        height: size.height * 0.25,
      ),
      body: Container(
        color: const Color(0XFFDFEAF5),
        child: ListView.builder(
          itemCount: 10,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: CampoNomeAtivo(),
            );
          },
        ),
      ),
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
    return SizedBox(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            height: 35,
          ),
          LabelSelecionarEmpresaAtivo(),
          SizedBox(
            height: 16,
          ),
          CampoBuscar(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class LabelSelecionarEmpresaAtivo extends StatelessWidget {
  const LabelSelecionarEmpresaAtivo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
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
            padding: const EdgeInsets.only(right: 22),
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

class CampoNomeAtivo extends StatelessWidget {
  const CampoNomeAtivo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        height: size.height * 0.08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                '[Nome Ativo]',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/EnviarDados');
              },
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
