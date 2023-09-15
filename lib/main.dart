import 'package:flutter/material.dart';
import 'package:wyam_app/pages/applications.dart';
import 'package:wyam_app/pages/home.dart';
import 'package:wyam_app/services/bottomNavigator.dart';

void main() => runApp(MaterialApp(
 initialRoute: '/',
 routes: {
  '/': (context) => const BottomNavigator(),
  '/home': (context) => const Home(),
  '/applications': (context) => const Applications(),
  // '/location': (context) => const ChooseLocation(),
 },
));