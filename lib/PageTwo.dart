import 'package:flutter/material.dart';
import 'package:untitled3/PageOne.dart';
import 'package:untitled3/main.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PageOne()),
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
          MaterialPageRoute(builder: (context) => const PageOne()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment Detail',
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
        child: Image.asset('assets/detail.png'),
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
