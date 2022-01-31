import 'package:flutter/material.dart';
import 'package:projectway/View_EnviarDados.dart';
import 'package:projectway/View_Selecionar_Ativo.dart';
import 'package:projectway/View_Selecionar_Empresa.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'View_Selecionar_Empresa.dart';
import 'View_EnviarDados.dart';
import 'View_Selecionar_Ativo.dart';
import 'Calendario.dart';

import 'maps.dart';

class WidgetDoAplicativo extends StatelessWidget {
  const WidgetDoAplicativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,

      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/SelecionarEmpresa',
      routes: {
        '/SelecionarEmpresa': (context) => const SelecionarEmpresa(),
        '/SelecionarAtivo': (context) => const SelecionarAtivo(),
        '/EnviarDados': (context) => const EnviarDados(),
        '/Maps': (context) => Maps(),
      },
      // Let `onUnknownRoute` handle this behavior.
    );
  }
}
