import 'package:flutter/material.dart';
import 'package:kc_tv_app/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Items _items = Items();
    return MaterialApp(
      title: 'TV MUSIC',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0x00000000),
          primaryColor: Color.fromARGB(255, 99, 1, 145),
          appBarTheme: const AppBarTheme(
            color:  Color.fromARGB(255, 99, 1, 145),
          ),
          textTheme:
            const TextTheme(   //0x89baf3
              headlineLarge: TextStyle(color: Colors.white, fontSize:32, fontWeight: FontWeight.bold, fontFamily: 'Tahoma'),
              headlineMedium: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              headlineSmall: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),   
              bodyMedium: TextStyle(color: Colors.white, fontSize:14,  fontWeight: FontWeight.bold),
              bodySmall: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
            ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
            backgroundColor:  Color.fromARGB(255, 99, 1, 145), // background (button) color
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          useMaterial3: true),
      home:  const StartScreen(),
  //     routes: {
  //         //'/': (context) => const StartScreen(), // Esta es la ruta inicial
  //         'ListScreen': (context) => ListScreen( listItems: _items,), // Esta es la ruta que quieres usar
  // },
    );
  }
}

