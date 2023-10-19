import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class RestFilter extends StatefulWidget {
  const RestFilter({super.key});

  @override
  State<RestFilter> createState() => _RestFilterState();
}

class _RestFilterState extends State<RestFilter> {
  GlobalKey<ScaffoldState>? _key;
  @override
  void initState() {
    super.initState();
    _key = GlobalKey<ScaffoldState>();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PageTitle(),
            WrapWidgetDemo(),
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
      leading: Builder(builder: (context) {
        return IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed("homePage");
          },
          icon: Icon(Icons.arrow_back),
        );
      }),
      subtitle: Text(
        "Укажите параметры фильтра",
        style: TextStyle(color: Colors.grey[600], fontSize: 16.0),
      ),
      trailing: Builder(builder: (context) {
        return IconButton(
          onPressed: () => Navigator.of(context).pushNamed("homePage"),
          icon: Icon(
            Icons.done,
            size: 30.0,
            color: Colors.red,
          ),
        );
      }),
    );
