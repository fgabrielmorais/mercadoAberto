import 'package:flutter/material.dart';

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
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
       );
       },
       ),
       
          actions: <Widget>[
          Container(
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
          ),
          const Padding(padding: EdgeInsets.all(5)),
           Container(child: IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black),
            tooltip: 'Oii :)',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
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
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
          Container(
          decoration: BoxDecoration(
            
            gradient: LinearGradient(
              begin:  Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [-84.0, 0.92],
              colors: [ Color(0xfff5d415), Colors.white ],
            )
          ),
          child: Padding(padding: const EdgeInsets.only(
              left: 20, right: 20, top: 80),
              child: Image.asset(
                "assets/images/setedosete.png",
                width: 352.67,
                height: 109.14,
                alignment: Alignment.topCenter
          )),
        
    ),  
    SizedBox(
      height: 15,
    ),
     Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
 Container(
       decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
            gradient: LinearGradient(
              begin:  Alignment.topRight,
              end: Alignment.topLeft,
              stops: [-10.0, 0.9],
              colors: [ Colors.pinkAccent, Colors.purple ],
            )
          ),
      height: 30.0,
      width: 374.0,
          child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             
              Text("  Assinatura por R\$9,90/mês",   style: TextStyle(fontSize: 16, color: Colors.white,)),
               Icon(Icons.arrow_forward_ios_rounded,  color: Colors.white, size: 19.0,),
             ],
          ),
          
    ),

     SizedBox(
      height: 8,
    ),

     Container(
      width: 374.0,
      height: 30.0,
      
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
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
              Icon(Icons.car_repair_rounded,  color: Colors.grey, size: 27.0,),
              Text("Frete grátis em todo o Brasil",   style: TextStyle(fontSize: 16, color: Colors.green,), textAlign: TextAlign.left,)
             ],
          ),
    )
      ],
     ),
        ],
      ),
    );
  }
}
