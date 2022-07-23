import 'package:flutter/material.dart';
import 'package:mercadoaberto/components/campo_pesquisa.dart';

class MeuCampoPesquisa extends StatelessWidget {
  const MeuCampoPesquisa({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
 
        width: MediaQuery.of(context).size.width - 
            (2 * 32) - (8 * 5),
            padding: const EdgeInsets.only(top: 9),
              child: TextField( 
              decoration: InputDecoration(
              isDense: true,
              prefixIcon: const Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(vertical: 5.0),
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(50.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 1.0),
              borderRadius: BorderRadius.circular(50.0),
              ),
              hintText:
               'Buscar no Mercado Aberto'
              ),
              ),
          
    );
  }
}