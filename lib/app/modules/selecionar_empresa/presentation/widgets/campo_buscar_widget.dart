import 'package:flutter/material.dart';

class CampoBuscar extends StatelessWidget {
  const CampoBuscar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.88,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[300],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: TextField(
          decoration: InputDecoration(
            icon: const Icon(
              Icons.search,
              color: Color(0xFFAAAFB9),
            ),
            hintText: 'Procurar empresa',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey[400]),
          ),
        ),
      ),
    );
  }
}
