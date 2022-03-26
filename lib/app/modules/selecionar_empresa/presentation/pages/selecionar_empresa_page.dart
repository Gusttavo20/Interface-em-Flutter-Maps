import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projectway/app/modules/selecionar_empresa/presentation/widgets/appbar_widget.dart';

import '../widgets/campo_nome_empresa_widget.dart';

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
