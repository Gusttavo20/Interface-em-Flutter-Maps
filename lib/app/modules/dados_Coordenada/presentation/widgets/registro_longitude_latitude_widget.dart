import 'package:flutter/material.dart';

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
