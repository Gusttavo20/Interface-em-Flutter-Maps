import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/appbar_widget.dart';
import '../widgets/nome_ativo_widget.dart';

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
