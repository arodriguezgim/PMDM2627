import 'package:flutter/material.dart';
import 'package:preferencias/config/preferences/preferencias.dart';
import 'package:preferencias/screens/settings_screen.dart';

void main() async { 
  // Aquí tengo que obtener la instancia de mis preferencias
  await Preferencias.init();
  
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool tema = Preferencias.darkMode;
    print('Tema es oscuro?: $tema' );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shared Preferences',
      home: SettingsScreen(),
      theme: tema ? .dark() : .light(),
      darkTheme: ThemeData.dark(),
      // themeMode: tema ? .dark : .light,
    );
  }
}