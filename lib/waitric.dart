import 'package:flutter/material.dart';
import 'package:waitric/routes.dart';
import 'package:waitric/theme.dart';

class Waitric extends StatelessWidget {
  const Waitric({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Waitric",
      theme: globalTheme,
      routes: routes,
    );
  }
}
