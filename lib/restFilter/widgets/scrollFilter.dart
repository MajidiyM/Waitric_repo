import 'package:flutter/material.dart';

class WrapWidgetDemo extends StatefulWidget {
  const WrapWidgetDemo({super.key});

  @override
  State<WrapWidgetDemo> createState() => _WrapWidgetDemoState();
}

class _WrapWidgetDemoState extends State<WrapWidgetDemo> {
  GlobalKey? _key;
  @override
  void initState() {
    super.initState();
    _key = GlobalKey();
  }

  Widget build(BuildContext context) {
    return Container(
      key: _key,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: rowChips(),
          ),
        ],
      ),
    );
  }

  rowChips() {
    return Row(
      children: [
        chipForRow("Бар", Color(0xFFEB5757)),
        chipForRow("Караоке", Color(0xFFEB5757)),
        chipForRow("Паб", Color(0xFFEB5757)),
        chipForRow("Кофейня", Color(0xFFEB5757)),
        chipForRow("Ресторан", Color(0xFFEB5757)),
      ],
    );
  }

  Widget chipForRow(String label, Color color) {
    return Container(
      margin: EdgeInsets.all(6.0),
      child: Chip(
        labelPadding: EdgeInsets.all(5.0),
        label: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        backgroundColor: color,
        elevation: 6.0,
        shadowColor: Colors.grey[600],
        padding: EdgeInsets.all(6.0),
      ),
    );
  }
}
