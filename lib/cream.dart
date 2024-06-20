import 'package:flutter/material.dart';
import 'breakfast.dart';

class CreamScreen extends StatelessWidget {
  //   int _selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   switch (index) {
  //     case 0:
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => const PageTwo()),
  //       );
  //       break;
  //     case 1:
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => const MyApp()),
  //       );
  //       break;
  //     case 2:
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(builder: (context) => const PageTwo()),
  //       );
  //       break;
  //   }

  final List<Map<String, dynamic>> foodItems = [
    {
      'name': 'Vanilla Ice Cream ',
      'image': 'assets/cream/Vanilla Ice Cream.jpeg',
      'price': 'Rp 29.000',
    },
    {
      'name': 'Chocolate Ice Cream',
      'image': 'assets/cream/Chocolate Ice Cream.jpeg',
      'price': 'Rp 40.000',
    },
    {
      'name': 'Mint Chocolate Chip Ice ',
      'image': 'assets/cream/Mint Chocolate Chip Ice.jpeg',
      'price': 'Rp 42.000',
    },
    {
      'name': 'Rocky Road Ice Cream',
      'image': 'assets/cream/Rocky Road Ice Cream.jpeg',
      'price': 'Rp 39.000',
    },
    {
      'name': 'Salted Caramel',
      'image': 'assets/cream/salted caramel.jpeg',
      'price': 'Rp 30.000',
    },
    {
      'name': 'Mango Sorbet',
      'image': 'assets/cream/Mango Sorbet.jpeg',
      'price': 'Rp 25.000',
    },
  ];
  CreamScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Food Selection',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 39, 9, 11),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop(); // Handle the back button action
          },
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Nasi Goreng',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Dinner',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.8,
              ),
              itemCount: foodItems.length,
              itemBuilder: (context, index) {
                return FoodItemCard(
                  name: foodItems[index]['name'],
                  imageUrl: foodItems[index]['image'],
                  price: foodItems[index]['price'],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BreakfastScreen()),
                );
              },
              child: const Text('Go to Lunch'),
            ),
          ),
        ],
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
        // currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(
            255, 178, 112, 70), // Selected icon and label color
        unselectedItemColor:
            const Color.fromARGB(255, 178, 112, 70), // Unselected icon color
        selectedLabelStyle: const TextStyle(
            color: Color.fromARGB(255, 178, 112, 70)), // Selected label color
        unselectedLabelStyle: const TextStyle(
            color: Color.fromARGB(255, 178, 112, 70)), // Unselected label color
        // onTap: _onItemTapped,
        backgroundColor: const Color.fromARGB(255, 39, 9, 11),
      ),
    );
  }
}

class FoodItemCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String price;

  const FoodItemCard({super.key, 
    required this.name,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
            child: Image.asset(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8.0),
                Text(price, style: TextStyle(color: Colors.grey[700])),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
                    const Icon(Icons.star, color: Colors.grey, size: 16),
                    IconButton(
                      icon: const Icon(Icons.add_circle_outline, color: Colors.brown),
                      onPressed: () {
                        // Functionality for adding item
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}