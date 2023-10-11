import 'package:flutter/material.dart';
import 'package:waitric/homePage/views/homePage.dart';

class RestFilter extends StatefulWidget {
  const RestFilter({super.key});

  @override
  State<RestFilter> createState() => _RestFilterState();
}

class _RestFilterState extends State<RestFilter> {
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

Widget PageTitle() => ListTile(
      title: Text(
        "Фильтр",
        style: TextStyle(
          fontSize: 24.0,
        ),
      ),
      leading: IconButton(
        onPressed: () => null,
        icon: Icon(Icons.arrow_back),
      ),
      subtitle: Text(
        "Укажите параметры фильтра",
        style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
      ),
      trailing: IconButton(
        onPressed: () => null,
        icon: Icon(
          Icons.done,
          size: 30.0,
          color: Colors.red,
        ),
      ),
    );
