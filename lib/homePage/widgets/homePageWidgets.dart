import 'package:flutter/material.dart';

class RestBox extends StatefulWidget {
  final String restName;
  final String restAddress;

  RestBox({
    required this.restName,
    required this.restAddress,
  });

  @override
  State<RestBox> createState() => _RestBoxState();
}

class _RestBoxState extends State<RestBox> {
  @override
  Widget build(BuildContext context) {
    String restAddress;
    String restName;
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Column(
            children: [
              Container(
                height: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/hotdog.jpg"),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              Container(
                height: 80.0,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          flex: 6,
                          child: Text(
                            widget.restName,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            "3.2/5",
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[600]),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey[400],
                        ),
                        Text(
                          widget.restAddress,
                          style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
