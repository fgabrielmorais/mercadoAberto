import 'package:flutter/material.dart';
import 'package:mercadoaberto/components/Hover.dart';

class BotaoCategoria extends StatefulWidget {
  const BotaoCategoria({Key? key, required this.icone, required this.nome})
      : super(key: key);

  final IconData icone;
  final String nome;

  @override
  _BotaoCategoriaState createState() => _BotaoCategoriaState();
}

class _BotaoCategoriaState extends State<BotaoCategoria> {
  bool selecionado = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() => {selecionado = !selecionado})
      },
      child: OnHover(builder: ((isHovered) {
        final color = isHovered ? Colors.blue : Colors.grey;

        return Column(
          children: [
            Container(
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: color,
                      blurRadius: 8,
                      offset: Offset(1, 1),
                    ),
                  ],
                  color: selecionado ? Colors.white : Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                children: [
                  Icon(
                    widget.icone,
                    size: 26,
                    color: selecionado ? Colors.blue : Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.nome,
                    style: TextStyle(
                      color: selecionado ? Colors.blue : Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      })),
    );
  }
}
