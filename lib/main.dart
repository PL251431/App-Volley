import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/first_screen.dart';
import 'screens/second_screen.dart';  
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio 4',
      debugShowCheckedModeBanner: false,
      // Rotas para navegar entre as telas
      initialRoute: '/home', // Tela inicial
      routes: {
        '/home': (context) => const FirstScreen(), // Primeira tela
        '/game': (context) => const SecondScreen(),   // Segunda tela
      },
    );
  }
}
