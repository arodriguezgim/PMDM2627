import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
   
  const SnackBarScreen({super.key});

  void mostrarSnackBarPersonalizado(){
    final snackbar = SnackBar(
      content: Text('Hola a DAM 2!!!'),
      duration: Duration(seconds: 2),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Snackbar'),),
      

      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          
        }, 
        label: Text('Mostrar Snackbar')
      ),
    );
  }
}