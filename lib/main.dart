import 'package:flutter/material.dart';
import 'package:wyam_app/pages/applications.dart';
import 'package:wyam_app/pages/home.dart';
import 'package:wyam_app/pages/mainPage.dart';

void main() => runApp(MaterialApp(
 initialRoute: '/',
 routes: {
  '/': (context) => const MainPage(),
  '/home': (context) => const Home(),
  '/applications': (context) => const Applications(),
 },
));