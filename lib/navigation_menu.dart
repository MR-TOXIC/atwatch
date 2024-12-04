// import 'package:flutter/material.dart';
//
// class NavigationMenu extends StatefulWidget {
//   const NavigationMenu({super.key});
//
//   @override
//   State<NavigationMenu> createState() => _NavigationMenuState();
// }
// class _NavigationMenuState extends State<NavigationMenu> {
//   int _selectedIndex = 0;
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
//     Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
//     Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
//   ];
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.person),
//                 backgroundColor: Colors.green
//             ),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.map),
//                 backgroundColor: Colors.yellow
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.crop_square_rounded),
//               backgroundColor: Colors.blue,
//             ),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.person_add_alt_1_sharp),
//                 backgroundColor: Colors.yellow
//             ),
//
//           ],
//           type: BottomNavigationBarType.shifting,
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.black,
//           iconSize: 40,
//           onTap: _onItemTapped,
//           elevation: 5
//       ),
//     );
//
//   }
// }
