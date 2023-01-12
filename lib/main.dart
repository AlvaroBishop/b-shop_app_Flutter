// main.dart
import 'package:b_shop_app/movies_app/screens/home_screen.dart';
import 'package:b_shop_app/personal_expenses_app/screens/my_home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'movies_app/provider/movies_provider.dart';
import 'movies_app/screens/details_screen.dart';
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
        theme: ThemeData(
            primarySwatch: Colors.teal,
            errorColor: Colors.red[900],
            fontFamily: 'Quicksand',
            textTheme: ThemeData.light().textTheme.copyWith(
                    titleLarge: const TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            appBarTheme: const AppBarTheme(
                titleTextStyle: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ))),
        title: 'b-shop',
        initialRoute: 'home',
        routes: {
          'home': (_) =>  HomePage(),
          'details': (_) => const DetailsScreen(),
          'movies' :(context) => const HomeScreen(),
          'expenses' :(context) => const MyHomePage(),
        },
    ); 
  }
}
