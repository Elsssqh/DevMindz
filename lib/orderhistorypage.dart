import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Order History',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Example order history card
              OrderCard(
                imagePath: 'assets/apartment1.jpg',
                orderId: 'A1234',
                orderDate: 'June 20, 2024',
                items: ['1x Deluxe Room', '2x Breakfast'],
                totalAmount: 'Rp 2.500.000',
              ),
              OrderCard(
                imagePath: 'assets/apartment2.jpg',
                orderId: 'B5678',
                orderDate: 'June 19, 2024',
                items: ['1x Suite Room', '1x Dinner'],
                totalAmount: 'Rp 3.000.000',
              ),
            ],
          ),
        ),
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
        selectedItemColor: const Color.fromARGB(255, 178, 112, 70),
        unselectedItemColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 39, 9, 11),
        onTap: (index) {
          // Handle navigation to Profile, Home, or Cart based on index
          // Implement navigation functionality
        },
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String imagePath;
  final String orderId;
  final String orderDate;
  final List<String> items;
  final String totalAmount;

  OrderCard({
    required this.imagePath,
    required this.orderId,
    required this.orderDate,
    required this.items,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              imagePath,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Detail',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Order ID: $orderId',
                ),
                SizedBox(height: 8),
                Text(
                  'Date: $orderDate',
                ),
                SizedBox(height: 8),
                Text(
                  'Items:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: items.map((item) => Text(item)).toList(),
                ),
                SizedBox(height: 16),
                Text(
                  'Total:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  totalAmount,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
