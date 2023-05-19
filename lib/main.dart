import 'package:app/screen/app_screen.dart';
import 'package:app/screen/launch_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/app_screen': (context) => const AppScreen(),
        '/launch_screen': (context) => const LaunchScreen(),
      },
    );
  }
}
