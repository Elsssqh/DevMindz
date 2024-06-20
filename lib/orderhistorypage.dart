import 'package:untitled3/bottomnav.dart';
import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
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
              // New order history card for Cornet Beef Hash
              OrderCard(
                imagePath: 'assets/Breakfast/Cornet Beef hash.jpg',
                orderId: 'C7890',
                orderDate: 'June 21, 2024',
                items: ['1x Cornet Beef Hash'],
                totalAmount: 'Rp 62.000',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String imagePath;
  final String orderId;
  final String orderDate;
  final List<String> items;
  final String totalAmount;

  const OrderCard({
    super.key,
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
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
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
                const Text(
                  'Order Detail',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Order ID: $orderId',
                ),
                const SizedBox(height: 8),
                Text(
                  'Date: $orderDate',
                ),
                const SizedBox(height: 8),
                const Text(
                  'Items:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: items.map((item) => Text(item)).toList(),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Total:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  totalAmount,
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
