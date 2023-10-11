import 'package:flutter/material.dart';
import 'package:waitric/homePage/views/homePage.dart';
import 'package:waitric/loginPage/views/loginPage.dart';
import 'package:waitric/restFilter/views/restFilter.dart';


final routes = {
  '/': (context) => LoginPage(),
  'homePage': (context) => HomePage(),
  'restFilter': (context) => RestFilter(),
};
