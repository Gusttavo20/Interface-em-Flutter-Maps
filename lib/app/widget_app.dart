import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'modules/enviar_dados/presentation/pages/enviar_dados_page.dart';
import 'modules/maps/maps.dart';
import 'modules/selecionar_ativo/presentation/pages/selecionar_ativo_page.dart';
import 'modules/selecionar_empresa/presentation/pages/selecionar_empresa_page.dart';

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
