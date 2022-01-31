import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'Calendario.dart';
import 'View_EnviarDados.dart';
import 'maps.dart';

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
    final Size size = MediaQuery.of(context).size;
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
                    const TextFieldLatitudeLongitude(),
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

class PainelDadosCoordenadas extends StatelessWidget {
  const PainelDadosCoordenadas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column();
  }
}

class TextFieldLatitudeLongitude extends StatelessWidget {
  const TextFieldLatitudeLongitude({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: 'Latitude',
              contentPadding: EdgeInsets.only(left: 20),
              hintStyle: TextStyle(
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 24, right: 24),
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20),
              hintText: 'Longitude',
              hintStyle: TextStyle(
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class LabelNomeDosDados extends StatelessWidget {
  const LabelNomeDosDados({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Sensor',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF1D1F23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Data',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1D1F23),
                ),
              ),
            ),
            Text(
              'Temperatura',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF1D1F23),
              ),
            ),
          ]),
    );
  }
}

class LabelNomeDosDadosCoordenadas extends StatelessWidget {
  const LabelNomeDosDadosCoordenadas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 8),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Sensor',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF1D1F23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Data',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF1D1F23),
                ),
              ),
            ),
          ]),
    );
  }
}

class RegistroDosDadosCoordenadas extends StatelessWidget {
  const RegistroDosDadosCoordenadas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              '7',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF1D1F23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                '25/01/2022',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1D1F23),
                ),
              ),
            ),
          ]),
    );
  }
}

class LabelNomeLatitudeLongitude extends StatelessWidget {
  const LabelNomeLatitudeLongitude({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 8),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Latitude',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF1D1F23),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Longitude',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF1D1F23),
                ),
              ),
            ),
          ]),
    );
  }
}

class RegistroDosDadosLatitudeLongitude extends StatelessWidget {
  const RegistroDosDadosLatitudeLongitude({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            '-16.750296',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF1D1F23),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: Text(
              '-49.3070657',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF1D1F23),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
