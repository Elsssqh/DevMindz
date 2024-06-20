import 'package:flutter/material.dart';

class RoomSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Room Selection',
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
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Card(
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
                        'assets/apartment1.jpg', // Ganti URL dengan gambar yang sesuai
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
                            'Snowy Suite Room',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Bask in luxury with breathtaking ocean views from your private suite',
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Include:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('✓ 24 hours CCTV'),
                              Text('✓ Full Service'),
                              Text('✓ Free Wifi'),
                              Text('✓ Bluetooth Speaker'),
                              Text('✓ Premium Mattress'),
                              Text('✓ Pillows and Blankets'),
                              Text('✓ Temperature Control (AC and Heater)'),
                              Text('✓ Private Bathroom with Hot and Cold Shower'),
                              Text('✓ Bath Amenities (Towels, Soap, Shampoo, Hairdryer)'),
                              Text('✓ Toilet'),
                              Text('✓ Mini Bar'),
                              Text('✓ Work Desk with Reading Lamp'),
                            ],
                          ),
                          SizedBox(height: 16),
                          Text(
                            'Starting From:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Rp 10.000.999/ 24 hours',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                // Implement add to cart functionality
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Color.fromARGB(255, 0, 0, 0), backgroundColor: Color.fromARGB(255, 255, 255, 255), // Warna tulisan putih
                              ),
                              child: Text('Add to Cart'),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                // Implement book now functionality
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 107, 83, 74), // Warna tulisan putih
                              ),
                              child: Text('Book Now'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
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
          // Implement navigation functionality
        },
      ),
    );
  }
}
