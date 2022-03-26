import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../dados_Coordenada/presentation/pages/dados_coordenada_page.dart';
import '../../../dados_temperatura/presentation/pages/dados_temperatura_page.dart';
import '../../../dados_umidade/presentation/pages/dados_umidade_page.dart';
import '../widgets/appbar_widget.dart';

class EnviarDados extends StatefulWidget {
  const EnviarDados({Key? key}) : super(key: key);

  @override
  State<EnviarDados> createState() {
    return _EnviarDadosState();
  }
}

class _EnviarDadosState extends State<EnviarDados> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    final Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBarFilho(
          height: size.height * 0.16,
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            EnviardadosTemperatura(),
            EnviardadosUmidade(),
            EnviarDadosCoordenadas(),
          ],
        ),
      ),
    );
  }
}
