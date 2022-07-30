import 'package:flutter/material.dart';
import 'package:mercadoaberto/components/cad_frete_gratis.dart';
import 'package:mercadoaberto/components/campo_pesquisa.dart';
import 'package:mercadoaberto/components/card_assinatura.dart';
import 'package:mercadoaberto/components/categoria_botao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}




class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}








class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
      elevation: 0,
     backgroundColor: Color(0xfff5d415),
       leading: Builder(builder: (BuildContext context){
       return IconButton(
            icon: const Icon(Icons.menu_outlined, color: Colors.black),
            tooltip: 'Menu',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Menu')));
            },
       );
       },
       ),
       
          actions: <Widget>[
        MeuCampoPesquisa(),
       
          const Padding(padding: EdgeInsets.all(5)),
           Container(child: IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
            tooltip: 'Seu carrinho',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Seu carrinho')));
            },
          ),
           ),
          ],
      bottom: const PreferredSize(


        preferredSize: Size.fromHeight(50),
        child: ListTile(leading: 
        Icon(Icons.pin_drop_outlined, color: Colors.black, size: 19.0,),
        
        title: 
        Text("Enviar para Marcello Queiroz - Rua Jardim Paulista, 56", 
        style: TextStyle(fontSize: 11.5), textAlign: TextAlign.center)
        ),
  
      ),
    
      ),
      body:
                Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin:  Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [-15.0, 0.19],
              colors: [ Color(0xfff5d415), Colors.white ],
            )
          ),
      
      padding: EdgeInsets.all(8),
      child:    
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        


        children: [
          
          Container(
         
          child: Padding(padding: const EdgeInsets.only(
              left: 5, right: 5, top: 10,),
              child: Image.asset(
                "assets/promo.jpg",
                width: 252.67,
                height: 149.14,
                alignment: Alignment.topCenter
          )),
        
    ),  
      SizedBox(
      height: 8,
    ),

    Assinatura(
     titulo: "Assine o nível 6 por R\$ 9,90/mês",
    ),
     SizedBox(
      height: 8,
    ),
    
     CardFrete(),

       SizedBox(
      height: 40,
    ),
       
    Container(child: 
    Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      BotaoCategoria(icone: Icons.smartphone_outlined, nome: "Recarregar",),
        BotaoCategoria(icone: Icons.sell, nome: "Ofertas",),
          BotaoCategoria(icone: Icons.shopping_basket_outlined,nome: "Mercado",),
              BotaoCategoria(icone: Icons.time_to_leave_outlined,nome: "Veículos",),
                BotaoCategoria(icone: Icons.add_outlined, nome: "Ver mais",),
      ],
    ),
    ),

    
        ]
    
    
      ),

    
      
    ),
 
    


    );
  }
}
