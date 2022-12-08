// main.dart
import 'package:b_shop_app/moviesApp/screens/home_screen.dart';
import 'package:b_shop_app/screens/app_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'moviesApp/provider/movies_provider.dart';
import 'moviesApp/screens/details_screen.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MoviesProvider(),
          lazy: false, // false = se istancia cuando se ejecuta el widget
        ),
      ],
      child: const MyApp(),
    );
  }
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
          'details': (_) => const DetailsScreen(),
          'movies' :(context) => const HomeScreen(),
          // 'expenses' :(context) => 
        },
    ); 
  }
}
