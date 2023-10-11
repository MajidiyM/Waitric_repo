import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PageTitle(),
          ],
        ),
      ),
    );
  }
}

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
        child: Text(
          "Привет, Пользователь!",
          style: TextStyle(
              color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.w300),
        ),
      ),
      subtitle: Text(
        "Давайте забронируем столик",
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 16.0,
        ),
      ),
    );
  }
}


