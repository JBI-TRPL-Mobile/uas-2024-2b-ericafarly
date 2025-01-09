import 'package:flutter/material.dart';
import './screens/home_page.dart';
import './screens/profile_screen.dart';
import './screens/login_page.dart';
import './screens/messages_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),  // Halaman utama
        '/profile': (context) => ProfileScreen(), // Halaman profil
        '/login': (context) => LoginPage(), // Halaman login
        '/messages': (context) => MessagesScreen(),
      },
      home: HomePage(),
    );
  }
}
