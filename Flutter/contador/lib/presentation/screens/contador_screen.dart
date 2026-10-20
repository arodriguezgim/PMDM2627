import 'package:contador/presentation/widgets/boton_personalizado.dart';
import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador App'), 
        backgroundColor: Colors.purple.shade100,
        centerTitle: true,
        /*leading: IconButton(
          onPressed: () {
            contador = 0;
            setState(() {});
          }, 
          icon: Icon(Icons.refresh_rounded)
          ),*/
        actions: [
          IconButton(
            onPressed: () {
              contador = 0;
              setState(() {});
            }, 
            icon: Icon(Icons.refresh_rounded)
          ),

        ],
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              '$contador',
              style: TextStyle(fontSize: 160, fontWeight: .w100),
            ),
            Text('Click${ contador == 1 ? '' : 's'}', style: TextStyle(fontSize: 25)),
            /*if ( contador != 1) Text('Clicks', style: TextStyle(fontSize: 25)),
            if ( contador == 1) Text('Click', style: TextStyle(fontSize: 25)),*/
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: .end,
        children: [
          FloatingActionButton(
            shape: StadiumBorder(),
            child: Icon(Icons.add),
            onPressed: () {
              contador++;
              setState(() {});
            }, ),
          SizedBox(height: 10,),
          FloatingActionButton(
            shape: StadiumBorder(),
            child: Icon(Icons.exposure_minus_1),
            onPressed: () {
              if ( contador == 0) return;
              contador--;
              setState(() {});
            }, ),
          SizedBox(height: 10,),
          FloatingActionButton(
            shape: StadiumBorder(),
            child: Icon(Icons.refresh_rounded),
            onPressed: () {
              contador = 0;
              setState(() {});
            }, ),
        ],
      )
    );
  }
}

