import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelecionarEmpresa extends StatefulWidget {
  const SelecionarEmpresa({Key? key}) : super(key: key);

  @override
  State<SelecionarEmpresa> createState() {
    return SelecionarEmpresaState();
  }
}

class SelecionarEmpresaState extends State<SelecionarEmpresa> {
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
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: CampoNomeEmpresa(),
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
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Selecione o Ativo',
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
            padding: const EdgeInsets.only(right: 50),
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

class CampoBuscar extends StatelessWidget {
  const CampoBuscar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: TextField(
          decoration: InputDecoration(
            icon: const Icon(
              Icons.search,
              color: Color(0xFFAAAFB9),
            ),
            hintText: 'Procurar empresa',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey[400]),
          ),
        ),
      ),
    );
  }
}

class CampoNomeEmpresa extends StatelessWidget {
  const CampoNomeEmpresa({Key? key}) : super(key: key);

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
              padding: EdgeInsets.only(left: 24),
              child: Text(
                '[Nome Empresa]',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/SelecionarAtivo');
              },
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
