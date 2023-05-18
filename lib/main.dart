import 'package:flutter/material.dart';
import 'package:ui/constants.dart';
import 'package:ui/screens/components/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant ',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(elevation: 0, color: kPrimaryColor),
          scaffoldBackgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const HomeScreen(),
    );
  }
}
