import 'package:flutter/material.dart';
import 'breakfast.dart';
import 'package:untitled3/bottomnav.dart';

class LunchScreen extends StatelessWidget {
  final List<Map<String, dynamic>> foodItems = [
    {
      'name': 'Beef Tacos',
      'image': 'assets/lunch/Beef Tacos.jpg',
      'price': 'Rp 56.000',
    },
    {
      'name': 'Fried Chicken',
      'image': 'assets/lunch/Fried Chicken.jpg',
      'price': 'Rp 40.000',
    },
    {
      'name': 'Meatball Sandwich',
      'image': 'assets/lunch/Meatball Sandwich.jpg',
      'price': 'Rp 62.000',
    },
    {
      'name': 'Philly Cheesesteak',
      'image': 'assets/lunch/Philly Cheesesteak.jpg',
      'price': 'Rp 69.000',
    },
    {
      'name': 'Pulled Pork Sandwich',
      'image': 'assets/lunch/Pulled Pork Sandwich.jpg',
      'price': 'Rp 54.000',
    },
    {
      'name': 'Reuben Sandwich',
      'image': 'assets/lunch/Reuben Sandwich.jpg',
      'price': 'Rp 58.000',
    },
  ];
  LunchScreen({super.key});
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
                hintText: 'Fried Chicken',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Lunch',
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
              child: const Text('Go to Breakfast'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class FoodItemCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String price;

  const FoodItemCard({
    super.key,
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
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(15.0)),
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
                      icon: const Icon(Icons.add_circle_outline,
                          color: Colors.brown),
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
