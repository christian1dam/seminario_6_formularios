import 'package:flutter/material.dart';
import 'package:formularios/screens/home_screen.dart';
import 'package:formularios/screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      showSemanticsDebugger: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: {
        'login': (_) => const LoginScreen(),
        'home': (_) => const HomeScreen()
      },
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[300],
      ),
    );
  }
}