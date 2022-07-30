import 'package:flutter/material.dart';

class Assinatura extends StatelessWidget {
  const Assinatura({ Key? key, required this.titulo}) : super(key: key);

final String titulo;
  @override
  Widget build(BuildContext context) {
    return      Container(
       padding: EdgeInsets.all(10),
       decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
            gradient: LinearGradient(
              begin:  Alignment.topRight,
              end: Alignment.topLeft,
              stops: [-13.0, 0.9],
              colors: [ Color(0xff171955), Color(0xffaa0f91)],
            )
          ),
      height: 40.0,
      width: 356.0,
          child: Row(
             
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               
              Text(titulo,   style: TextStyle( color: Colors.white,)),
               IconButton(
                 tooltip: 'Seu carrinho',
                 onPressed: () {
               }, padding: EdgeInsets.only(top: 3.3, bottom: 3.0),icon: const Icon(Icons.arrow_forward_ios_rounded,  color: Colors.white, size: 13.0 ),
             )
               ],
          ),
          
    );

  }
}