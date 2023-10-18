import 'package:flutter/material.dart';

class WrapWidgetDemo extends StatefulWidget {
  const WrapWidgetDemo({Key? key});

  @override
  State<WrapWidgetDemo> createState() => _WrapWidgetDemoState();
}

class _WrapWidgetDemoState extends State<WrapWidgetDemo> {
  GlobalKey? _key;
  List<String> _choices = [
    "Бар",
    "Караоке",
    "Паб",
    "Кофейня",
    "Ресторан",
  ];
  List<String> _dishes = [
    "Узбекская",
    "Русская",
    "Европейская",
    "Итальянская",
    "Десерты",
  ];
  int _choiceIndex = 0;
  int _dishIndex = 0;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _key,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Text(
              "Выберите тип заведения",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ChoiceChips(
                choices: _choices,
                selectedChoiceIndex: _choiceIndex,
                onChoiceSelected: (int index) {
                  setState(() {
                    _choiceIndex = index;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Text(
              "Выберите тип кухни",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ChoiceChips(
                choices: _dishes,
                selectedChoiceIndex: _dishIndex,
                onChoiceSelected: (int index) {
                  setState(() {
                    _dishIndex = index;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChoiceChips extends StatelessWidget {
  final List<String> choices;
  final int selectedChoiceIndex;
  final Function(int) onChoiceSelected;

  ChoiceChips({
    required this.choices,
    required this.selectedChoiceIndex,
    required this.onChoiceSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: choices.asMap().entries.map((entry) {
        final int index = entry.key;
        final String choice = entry.value;
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ChoiceChip(
            labelPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            label: Text(choice),
            selected: selectedChoiceIndex == index,
            selectedColor: Colors.red,
            onSelected: (bool selected) {
              onChoiceSelected(selected ? index : 0);
            },
            backgroundColor: Colors.grey[200],
            labelStyle: TextStyle(
              color: selectedChoiceIndex == index ? Colors.white : Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.w300,
            ),
          ),
        );
      }).toList(),
    );
  }
}
