import 'package:flutter/material.dart';
import 'package:projectway/View_EnviarDados.dart';
import 'package:projectway/View_Selecionar_Ativo.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'View_Selecionar_Empresa.dart';

class WidgetDoAplicativo extends StatelessWidget {
  const WidgetDoAplicativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        Locale('pt', 'BR'),
      ],
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/EnviarDados',
      routes: {
        '/SelecionarEmpresa': (context) => SelecionarEmpresa(),
        '/SelecionarAtivo': (context) => SelecionarAtivo(),
        '/EnviarDados': (context) => EnviarDados(),
      },
    );
  }
}
