import 'package:flutter/material.dart';
import 'package:wyam_app/pages/applications.dart';
import 'package:wyam_app/pages/home.dart';
import 'package:wyam_app/services/bottomNavigator.dart';
import 'package:wyam_app/services/searchBar.dart';

void main() => runApp(MaterialApp(
 initialRoute: '/',
 routes: {
  '/': (context) => const BottomNavigator(),
  '/home': (context) => const Home(),
  '/applications': (context) => const Applications(),
  '/search': (context) => const Search(),
  // '/location': (context) => const ChooseLocation(),
 },


));