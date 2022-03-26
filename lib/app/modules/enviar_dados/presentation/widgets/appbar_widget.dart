import 'package:flutter/material.dart';
import 'label_nome_ativo_widget.dart';

class AppBarFilho extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const AppBarFilho({
    Key? key,
    required this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AppBar(
      leadingWidth: 0,
      backgroundColor: Colors.white,
      title: const Padding(
        padding: EdgeInsets.only(top: 24, left: 10),
        child: LabelNomeAtivo(),
      ),
      bottom: const TabBar(
        indicator: UnderlineTabIndicator(
          insets: EdgeInsets.only(left: 25, right: 25),
          borderSide: BorderSide(
            width: 8,
            color: Color(0xFF004586),
          ),
        ),
        indicatorWeight: 2,
        indicatorColor: Color(0xFF004586),
        labelColor: Color(0xFF004586),
        padding: EdgeInsets.symmetric(horizontal: 20),
        tabs: [
          Tab(text: 'Temperatura'),
          Tab(text: 'Umidade'),
          Tab(text: 'Coordenada'),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
