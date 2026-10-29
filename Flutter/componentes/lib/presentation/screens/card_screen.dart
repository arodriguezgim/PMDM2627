import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tarjetas - Cards'),),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            //elevation: 0,
            child: Column(
              children: [
                ListTile(
                  leading: Icon( Icons.photo_album_outlined ),
                  title: Text('Soy un título'),
                  subtitle: Text('Velit sunt qui adipisicing exercitation cillum cupidatat non id sunt dolore qui.'),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}