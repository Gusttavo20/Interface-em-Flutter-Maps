import 'package:flutter/material.dart';

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
