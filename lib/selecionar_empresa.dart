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
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarFilho(
        height: 150,
      ),
      body: Container(
          color: Colors.lightBlue[100],
          child: ListView.builder(
            itemCount: 10,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: NomeEmpresaWidget(),
              );
            },
          )),
    );
  }
}

class AppBarFilho extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  AppBarFilho({
    Key? key,
    required this.height,
  }) : super(key: key);
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LabelSelecionarEmpresaAtivo(),
          SizedBox(
            height: 16,
          ),
          const CampoBuscar(),
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
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Selecione a Empresa',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 20,
            ),
          ),
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(-pi),
            child: IconButton(
              icon: const Icon(Icons.sort),
              color: Colors.indigo[900],
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class CampoBuscar extends StatelessWidget {
  const CampoBuscar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: TextField(
          decoration: InputDecoration(
            icon: Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
            hintText: "Procurar empresa",
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey[400]),
          ),
        ),
      ),
    );
  }
}

class NomeEmpresaWidget extends StatelessWidget {
  const NomeEmpresaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          child: SizedBox(
            height: 60,
            width: 330,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    '[Nome Empresa]',
                    style: TextStyle(
                      fontSize: 16,
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
          ),
        ),
      ),
    );
  }
}
