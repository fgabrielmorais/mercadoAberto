import 'package:flutter/material.dart';
import 'package:mercadoaberto/components/campo_pesquisa.dart';

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
              stops: [-15.0, 0.17],
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

     Container(
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
              Text("  Assine o nível 6 por R\$9,90/mês",   style: TextStyle( color: Colors.white,)),
               Icon(Icons.arrow_forward_ios_rounded,  color: Colors.white, size: 17.0,),
             ],
          ),
          
    ),

     SizedBox(
      height: 8,
    ),

     Container(
        padding: const EdgeInsets.only(left: 7.5, right: 7.5),
      width: 356.0,
      height: 40.0,
      
       decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(3, 5),

              ),
          ],
          ),


          

          
          child: Row(
         
             crossAxisAlignment: CrossAxisAlignment.center,
             
             children: [
           
         
            RichText(
            text: TextSpan(
            children: [
              
             WidgetSpan(
             child: Icon(Icons.local_shipping_outlined , size: 19, color: Colors.green,),
              ),

            TextSpan(
            text: " Frete Grátis ",
            style: TextStyle(color: Colors.green)
            ),
            TextSpan(
            text: "em milhões de produtos a partir de R\$79",
            style: TextStyle(color: Colors.black)
      ),
    ],
  ),
),
            

              
             ],
          ),
    )
      ],
     ),
      
    ),
    );
  }
}
