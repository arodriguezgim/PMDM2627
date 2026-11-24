import 'package:shared_preferences/shared_preferences.dart';

class Preferencias {

  static late SharedPreferences _preferencias;
  // 1 - Aquí creo las propiedades globales que quiero manejar en mi APP
  static bool _permisoUbicacion = false;
  static bool _permisoCamara = false;
  static bool _temaOscuro = false;
  static String _nombre = "";

  static Future init() async {
    _preferencias = await SharedPreferences.getInstance();
  }

  // 2 - Me he de crear los métodos que me devuelvan los valores
  






}