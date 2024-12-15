import 'package:flutter/material.dart';
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
      theme: ThemeData(
        fontFamily: 'ConcertOne'
      ),
      debugShowCheckedModeBanner: false, 
      // Definindo a rota incial
      initialRoute: '/home',
      // Define as rotas de navegação
      routes: {
        '/home': (context) => const FirstScreen(), 
        '/game': (context) => const SecondScreen(), 
      },
    );
  }
  
}
