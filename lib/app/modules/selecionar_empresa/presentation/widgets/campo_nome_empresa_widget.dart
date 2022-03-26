import 'package:flutter/material.dart';

class CampoNomeEmpresa extends StatelessWidget {
  const CampoNomeEmpresa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        height: size.height * 0.08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                '[Nome Empresa]',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/SelecionarAtivo');
              },
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
