import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
   
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

/*
  bool _permisoUbicacion = false;
  bool _permisoCamara = false;
  bool _temaOscuro = false;
  String _nombre = "";
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Preferencias'),),
      body: Column(
        children: [
          CheckboxListTile.adaptive(
            title: Text('Permiso de Ubicación'),
            value: _permisoUbicacion, 
            onChanged: (value) {
              _permisoUbicacion = value!;
              setState(() {});
            },),

          CheckboxListTile.adaptive(
            title: Text('Permiso de Cámara'),
            value: _permisoCamara, 
            onChanged: (value) {
              _permisoCamara = value!;
              setState(() {});
            },),

          CheckboxListTile.adaptive(
            title: Text('Tema Dark'),
            value: _temaOscuro, 
            onChanged: (value) {
              _temaOscuro = value!;
              setState(() {});
            },),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              initialValue: _nombre,
              decoration: InputDecoration(
                label: Text('Nombre'),
                helperText: 'Nombre de usuario'
              ),
              onChanged: (value) {
                _nombre = value;
              },
            ),
          )
        ],
      )
    );
  }
}