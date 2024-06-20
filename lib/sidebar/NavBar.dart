import 'package:flutter/material.dart';
import 'package:untitled3/homepage.dart'; // Sesuaikan dengan lokasi homepage.dart
import 'package:untitled3/about_us.dart'; // Sesuaikan dengan lokasi about_us.dart
import 'package:untitled3/loginScreen.dart'; // Sesuaikan dengan lokasi loginScreen.dart
import 'package:untitled3/orderhistorypage.dart'; // Sesuaikan dengan lokasi orderhistory.dart

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 39, 9, 11)
            ),
            accountName: Text(
              'Hello, Admin',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            accountEmail: Text(
              'Devmindz@example.com',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/555.png'), // Replace with the path to your image
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Implementasi untuk Settings jika diperlukan
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Order History'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderHistoryScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUsScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Payment'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Implementasi untuk Payment jika diperlukan
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
              Navigator.pushReplacement( // PushReplacement digunakan agar tidak bisa kembali ke halaman ini setelah logout
                context,
                MaterialPageRoute(builder: (context) => loginScreen()),
              );
              // Implementasi untuk Log Out jika diperlukan
            },
          ),
        ],
      ),
    );
  }
}
