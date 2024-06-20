import 'package:flutter/material.dart';
import 'lunch.dart';
import 'breakfast.dart';
import 'dinner.dart';
import 'snack.dart';
import 'drink.dart';
import 'cream.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key}) : super(key: key);

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            padding: EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Choose your Category:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BreakfastScreen()),
                    );
                  },
                  child: Image.asset('assets/breakfast.jpg'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LunchScreen()),
                    );
                  },
                  child: Image.asset('assets/lunch.jpg'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DinnerScreen()),
                    );
                  },
                  child: Image.asset('assets/dinner.jpg'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SnackScreen()),
                    );
                  },
                  child: Image.asset('assets/snack.jpg'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DrinkScreen()),
                    );
                  },
                  child: Image.asset('assets/drink.jpg'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreamScreen()),
                    );
                  },
                  child: Image.asset('assets/ice.jpg'),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Recommend For You:',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 330.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                recommendCard('assets/Breakfast/Fried Rice Sausage.jpg', 'Fried Rice Sausage', 'Rp 10.000.999'),
                recommendCard('assets/Breakfast/Biscuit and Gravy.jpg', 'Biscuit and Gravy', 'Rp 10.000.999'),
                // Add more cards as needed
              ],
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
        selectedItemColor: const Color.fromARGB(255, 178, 112, 70),
        unselectedItemColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 39, 9, 11),
      ),
    );
  }

  Widget recommendCard(String imagePath, String title, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          width: 200,
          child: Column(
            children: <Widget>[
              Image.asset(imagePath, height: 100, fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Text(price),
              IconButton(
                icon: Icon(Icons.add_circle, color: Color.fromARGB(255, 178, 112, 70)),
                onPressed: () {
                  // Handle adding to cart
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}