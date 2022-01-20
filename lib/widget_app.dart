import 'package:flutter/material.dart';
import 'package:projectway/selecionar_ativo.dart';

import 'selecionar_empresa.dart';

class WidgetDoAplicativo extends StatelessWidget {
  const WidgetDoAplicativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/SelecionarEmpresa',
      routes: {
        '/SelecionarEmpresa': (context) => SelecionarEmpresa(),
        '/SelecionarAtivo': (context) => SelecionarAtivo(),
      },
    );
  }
}
