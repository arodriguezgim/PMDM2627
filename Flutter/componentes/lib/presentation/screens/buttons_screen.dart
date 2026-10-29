import 'package:flutter/material.dart';

class BotonesScreen extends StatelessWidget {
   
  const BotonesScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Botones - Buttons'),),
      body: _Buttons(),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_back_ios),
        onPressed: () {            
          },
        ),
    );
  }
}

class _Buttons extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            //Elevated Buttons
            ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
            ElevatedButton(onPressed: null, child: Text('Elevated Button Disabled')),
            ElevatedButton.icon(
              onPressed: () {}, 
              label: Text('Elevated Icon Button'),
              icon: Icon(Icons.terminal),),
            // Filled Buttons
            FilledButton(
              onPressed: () {}, 
              child: Text('Filled'),
            ),
            FilledButton.icon(onPressed: (){}, label: Text('Filled Icon'), icon: Icon(Icons.dnd_forwardslash_outlined),)

          ],
        ),
      ),
    );
  }
}