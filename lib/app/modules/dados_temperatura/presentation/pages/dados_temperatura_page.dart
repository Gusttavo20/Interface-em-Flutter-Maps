import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../calendario/Calendario.dart';
import '../../../enviar_dados/presentation/widgets/button_enviar_dados_widget.dart';
import '../../../enviar_dados/presentation/widgets/label_enviar_seguintes_dados_widget.dart';
import '../../../enviar_dados/presentation/widgets/label_nome_dados_widget.dart';
import '../widgets/button_informacoes_temperatura_widget.dart';
import '../widgets/registro_dados_widget.dart';

class EnviardadosTemperatura extends StatefulWidget {
  const EnviardadosTemperatura({Key? key}) : super(key: key);

  @override
  _EnviardadosTemperaturaState createState() => _EnviardadosTemperaturaState();
}

class _EnviardadosTemperaturaState extends State<EnviardadosTemperatura> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: CalendarioState(
            initialDate: DateTime.now(),
            firstDate: DateTime(2021),
            lastDate: DateTime(2022, 12),
            onDateChanged: (DateTime value) {},
          ),
        ),
        const BotaoInformacoesTemperatura(),
        const SizedBox(
          height: 4,
        ),
        const LabelEnviarOsSeguintesdados(),
        const LabelNomeDosDados(),
        const RegistroDosDados(),
        const SizedBox(
          height: 45,
        ),
        const ButtonEnviarDados(),
      ],
    );
  }
}
