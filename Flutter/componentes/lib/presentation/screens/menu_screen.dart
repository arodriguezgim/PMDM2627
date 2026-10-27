import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(Icons.access_alarm_outlined),
          title: Text('Navegacion en Flutter'),
          onTap: () {
            
            /*final route = MaterialPageRoute(
              builder: (context) => ListView2Screen(),
            );
            Navigator.push(context, route);*/

            Navigator.pushNamed(context, "listview1");

          },
          trailing: Icon(Icons.arrow_forward_ios),
        ), 
        separatorBuilder: (_, __) => Divider(), 
        itemCount: 100
      )
    );
  }
}