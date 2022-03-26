import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../calendario/Calendario.dart';
import '../../../enviar_dados/presentation/widgets/button_enviar_dados_widget.dart';
import '../../../enviar_dados/presentation/widgets/label_enviar_seguintes_dados_widget.dart';
import '../../../maps/maps.dart';
import '../widgets/label_nome_dados_coordenada_widget.dart';
import '../widgets/label_nome_latitude_longitude_widget.dart';
import '../widgets/registro_longitude_latitude_widget.dart';
import '../widgets/resgistro_nome_dados_coordenada_widget.dart';
import '../widgets/text_latitude_longitude_widget.dart';

class EnviarDadosCoordenadas extends StatefulWidget {
  const EnviarDadosCoordenadas({Key? key}) : super(key: key);

  @override
  _EnviarDadosCoordenadasState createState() => _EnviarDadosCoordenadasState();
}

class _EnviarDadosCoordenadasState extends State<EnviarDadosCoordenadas>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Maps(),
          ),
          SlidingUpPanel(
            borderRadius: BorderRadius.circular(30),
            minHeight: 200,
            maxHeight: 700,
            panel: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      width: 54,
                      height: 3.87,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0xFF004386),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24, right: 24),
                        child: CalendarioState(
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2021),
                          lastDate: DateTime(2022, 12),
                          onDateChanged: (DateTime value) {},
                        ),
                      ),
                    ),
                    const TextLatitudeLongitude(),
                    const LabelEnviarOsSeguintesdados(),
                    const LabelNomeDosDadosCoordenadas(),
                    const RegistroDosDadosCoordenadas(),
                    const LabelNomeLatitudeLongitude(),
                    const RegistroDosDadosLatitudeLongitude(),
                    const SizedBox(
                      height: 16,
                    ),
                    const ButtonEnviarDados(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
