import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SelecionarAtivo extends StatefulWidget {
  const SelecionarAtivo({Key? key}) : super(key: key);
  @override
  _SelecionarAtivoState createState() => _SelecionarAtivoState();
}

class _SelecionarAtivoState extends State<SelecionarAtivo> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBarFilho(
        height: size.height * 0.25,
      ),
      body: Container(
        color: Color(0XFFDFEAF5),
        child: ListView.builder(
          itemCount: 10,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: NomeAtivo(),
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
    return Container(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 35,
          ),
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
      width: size.width * 0.85,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.indigo[900],
            onPressed: () {
              Navigator.of(context).pushNamed('/SelecionarEmpresa');
            },
          ),
          Text(
            'Selecione o Ativo',
            style: TextStyle(
              color: Colors.blue[800],
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
        width: size.width * 0.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                color: Colors.grey[400],
              ),
              hintText: "Procurar empresa",
              border: InputBorder.none,
              hintStyle: TextStyle(color: Colors.grey[400]),
            ),
          ),
        ));
  }
}

class NomeAtivo extends StatelessWidget {
  const NomeAtivo({Key? key}) : super(key: key);

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
            height: size.height * 0.08,
            width: 350,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
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
          ),
        ),
      ),
    );
  }
}
