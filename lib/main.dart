// main.dart
import 'package:b_shop_app/screens/app_details_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: 'b-shop',
        initialRoute: 'home',
        routes: {
          'home': (_) =>  const HomePage(),
          'details' :(context) => const AppDetails()
        },
    ); 
  }
}
