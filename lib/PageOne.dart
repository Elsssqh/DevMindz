import 'package:flutter/material.dart';
import 'package:devmindz/PageTwo.dart';
import 'package:devmindz/main.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PageTwo()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyApp()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PageTwo()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Room Selection',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 39, 9, 11),
        iconTheme: const IconThemeData(
          color: Colors.white, // Change the back button color
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/logo.png',
              height: 70.0,
              width: 80.0,
            ),
          ),
        ],
      ),
      body: Center(
        child: Image.asset('assets/room.png'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(
            255, 178, 112, 70), // Selected icon and label color
        unselectedItemColor:
            const Color.fromARGB(255, 178, 112, 70), // Unselected icon color
        selectedLabelStyle: const TextStyle(
            color: Color.fromARGB(255, 178, 112, 70)), // Selected label color
        unselectedLabelStyle: const TextStyle(
            color: Color.fromARGB(255, 178, 112, 70)), // Unselected label color
        onTap: _onItemTapped,
        backgroundColor: const Color.fromARGB(255, 39, 9, 11),
      ),
    );
  }
}
