import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: Center(child: Text('Scaffold Page 1'),),
    );
  }
}