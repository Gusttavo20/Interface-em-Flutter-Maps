import 'package:flutter/material.dart';

class TextLatitudeLongitude extends StatelessWidget {
  const TextLatitudeLongitude({Key? key}) : super(key: key);

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
                color: Color(0xFFCFD8DC),
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
                color: Color(0xFFCFD8DC),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
