import 'package:flutter/material.dart';
import 'package:waitric/homePage/widgets/widgets.dart';
import 'package:waitric/restFilter/views/view.dart';
import 'package:waitric/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _restNames = [
    'Hot-Doggie',
    'Pizza Place',
    'Burger Joint',
    'Sushi Bar',
    'Ice Cream Parlor',
  ];

  final List<String> _restAddress = [
    '4140 Parker Rd. Allentown, New Mexico 31134',
    '123 Main St. Cityville, State 12345',
    '456 Oak St. Burgertown, State 67890',
    '789 Pine St. Sushiville, State 12345',
    '321 Maple St. Icesville, State 67890',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PageTitle(),
            SearchBar(),
            Expanded(
              child: ListView.builder(
                itemCount: _restNames.length,
                itemBuilder: (context, index) => RestBox(
                  restName: _restNames[index],
                  restAddress: _restAddress[index],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
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

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
            hintText: "Поиск",
            suffixIcon: IconButton(
              icon: Icon(Icons.filter_list),
              onPressed: () => Navigator.of(context).pushNamed('restFilter'),
            ),
            prefixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () => null,
            )),
      ),
    );
  }
}
