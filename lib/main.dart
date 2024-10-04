import 'package:festival_app/screens/detalispage/details.dart';
import 'package:festival_app/screens/homepage/home.dart';
import 'package:festival_app/screens/quotepage/qoutes.dart';
import 'package:festival_app/screens/splashscreen/spalsh.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => const splesh_screen(),
        'home': (context) => const homepage(),
        'quote': (context) => const quotes_page(),
        'detaills': (context) => const detailss(),
      },
    ),
  );
}
