import 'package:flutter/material.dart';

// class RestCard extends StatefulWidget {
//   const RestCard({Key? key}) : super(key: key);

//   @override
//   State<RestCard> createState() => _RestCardState();
// }

// class _RestCardState extends State<RestCard> {
//   List<String> _restNames = [
//     "Hot-Doggie",
//     "Чайкоф",
//     "BNB",
//     "Nomdor",
//     "Toku",
//   ];

//   List<String> _restAddresses = [
//     "4141 Parker Rd. Allentown, New Mexico 31134",
//     "4142 Parker Rd. Allentown, New Mexico 31134",
//     "4143 Parker Rd. Allentown, New Mexico 31134",
//     "4144 Parker Rd. Allentown, New Mexico 31134",
//     "4145 Parker Rd. Allentown, New Mexico 31134",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: _restNames.asMap().entries.map((entry) {
//           final int index = entry.key;
//           final String restName = entry.value;
//           final String restAddress = _restAddresses[index];
//           return RestBox(
//             restName: restName,
//             restAddress: restAddress,
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

// class RestBox extends StatelessWidget {
//   final String restName;
//   final String restAddress;

//   RestBox({required this.restName, required this.restAddress});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
//       child: ClipRRect(
//         borderRadius: BorderRadius.all(Radius.circular(10.0)),
//         child: Card(
//           color: Color.fromARGB(255, 247, 247, 247),
//           child: SizedBox(
//             width: double.infinity,
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//               child: Column(
//                 children: [
//                   Container(
//                     height: 150.0,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.fill,
//                         image: AssetImage("assets/hotdog.jpg"),
//                       ),
//                       borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                     ),
//                   ),
//                   ListTile(
//                     title: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 0, vertical: 10.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Expanded(
//                             flex: 8,
//                             child: Text(
//                               restName,
//                               style: TextStyle(
//                                 fontSize: 20.0,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             flex: 1,
//                             child: Text(
//                               "4.1/5",
//                               style: TextStyle(
//                                 fontSize: 14.0,
//                                 color: Colors.grey[600],
//                               ),
//                             ),
//                           ),
//                           Expanded(
//                             flex: 1,
//                             child: Icon(
//                               Icons.star_rate_outlined,
//                               color: Colors.yellow,
//                               size: 20.0,
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     subtitle: Row(
//                       children: [
//                         Icon(
//                           Icons.place,
//                         ),
//                         Text(
//                           restAddress,
//                           style: TextStyle(
//                             fontSize: 12.0,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class RestBox extends StatefulWidget {
  const RestBox({super.key});

  @override
  State<RestBox> createState() => _RestBoxState();
}

class _RestBoxState extends State<RestBox> {
  @override
  Widget build(BuildContext context) {
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
            ],
          ),
        ),
      ),
    );
  }
}
