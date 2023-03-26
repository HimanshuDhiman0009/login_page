import 'package:flutter/material.dart';
import 'package:login_page/register.dart';
import 'home_page.dart';
import 'register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/first': (context) => MyRegister(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    );
  }
}
