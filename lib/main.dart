import 'package:flutter/material.dart';
import 'package:preferences_app_plantilla/preferences/preferences.dart';

import 'screens/screens.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //este widget nos asegura que se han establecido unos canales primitivos a bajo nivel para ejecutar el metodo asincrono para inicializar
  await Preferences.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // DENTRO DEL BUILD NUNCA PUEDE HABER UN METODO ASINCRONO PORQUE LA APLICACION PODRIA QUEDARSE BLOQUEADA
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName: (_) => const HomeScreen(),
        SettingsScreen.routerName: (_) => const SettingsScreen()
      },
    );
  }
}
