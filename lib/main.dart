import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/first_screen.dart';
import 'screens/second_screen.dart';

void main() {
  // Garantir que o Flutter esteja completamente inicializado
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avaliação 1', 
      debugShowCheckedModeBanner: false, 
      // Rota inicial do app (a primeira tela exibida)
      initialRoute: '/home',
      // Define as rotas para navegar entre as telas
      routes: {
        '/home': (context) => const FirstScreen(), 
        '/game': (context) => const SecondScreen(), 
      },
    );
  }
}
