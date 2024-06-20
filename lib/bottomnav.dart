import 'package:flutter/material.dart';
import 'package:untitled3/profilescreen.dart';
import 'package:untitled3/payment.dart';
import 'package:untitled3/homepage.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfileScreen()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Payment()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
          icon: Icon(Icons.newspaper),
          label: 'Payment',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color.fromARGB(255, 178, 112, 70),
      unselectedItemColor: const Color.fromARGB(255, 178, 112, 70),
      selectedLabelStyle:
          const TextStyle(color: Color.fromARGB(255, 178, 112, 70)),
      unselectedLabelStyle:
          const TextStyle(color: Color.fromARGB(255, 178, 112, 70)),
      onTap: _onItemTapped,
      backgroundColor: const Color.fromARGB(255, 39, 9, 11),
    );
  }
}
