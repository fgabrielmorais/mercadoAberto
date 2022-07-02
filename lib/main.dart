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
              border: OutlineInputBorder(
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
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin:  Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [-15.0, 0.1],
              colors: [ Color(0xfff5d415), Colors.white ],
            )
          ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              '$_counter',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),  
    
    )
      )
    );
  }
}
