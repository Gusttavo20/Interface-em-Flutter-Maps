import 'package:flutter/material.dart';
import 'package:projectway/app/modules/selecionar_ativo/presentation/widgets/label_selecionar_empresa_ativo_widget.dart';
import 'package:projectway/app/modules/selecionar_empresa/presentation/widgets/campo_buscar_widget.dart';
import 'package:social_share/social_share.dart';

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
          LabelSelecionarEmpresaAtivo(),
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
