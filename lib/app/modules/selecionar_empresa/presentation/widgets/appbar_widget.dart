import 'package:flutter/material.dart';

import 'campo_buscar_widget.dart';
import 'label_selecionar_empresa_widget.dart';

class AppBarFilho extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const AppBarFilho({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(
            height: 35,
          ),
          LabelSelecionarEmpresa(),
          SizedBox(
            height: 16,
          ),
          CampoBuscar(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
