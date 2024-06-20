import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled3/model/apartment.dart';
import 'package:untitled3/model/user.dart';
import 'package:untitled3/detail_page.dart';
import 'package:untitled3/food.dart';
import 'package:untitled3/roomseleection.dart';
import 'package:untitled3/bottomnav.dart';
import 'sidebar/NavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text(
          'Hi Cust',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 39, 9, 11),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            _scaffoldKey.currentState
                ?.openDrawer(); // Open the navigation drawer
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
      drawer: const NavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search',
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
                    'Choose your Category',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FoodScreen()),
                      );
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.fastfood, size: 50),
                          SizedBox(height: 10),
                          Text(
                            'Food',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RoomSelectionScreen()),
                      );
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.hotel, size: 50),
                          SizedBox(height: 10),
                          Text(
                            'Hotel',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'New in Bali',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              apartmentTop(),
              const SizedBox(height: 30),
              apartmentNear(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }

  Widget searc() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 20),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search...",
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget apartmentTop() {
    return SizedBox(
      height: 300, // Adjust the height as needed
      child: ListView.builder(
        itemCount: listApartmentTop.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Apartment apartment = listApartmentTop[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(apartment: apartment),
                ),
              );
            },
            child: Container(
              width: 300, // Adjust the width as needed
              margin: EdgeInsets.fromLTRB(
                index == 0 ? 16 : 8,
                0,
                index == listApartmentTop.length - 1 ? 16 : 8,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            apartment.image!,
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 16,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            child: Text(
                              apartment.type!,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(16),
                                topLeft: Radius.circular(16),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Text(
                              '\$ ${apartment.price!}',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          apartment.title!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: apartment.rating!,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.brown,
                        ),
                        ignoreGestures: true,
                        itemSize: 15,
                        onRatingUpdate: (rating) {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          apartment.location!.split(', ').first,
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[700]),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        apartment.users!.toString(),
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      Icon(Icons.person, size: 18, color: Colors.grey[700]),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget users() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: listUser.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          User user = listUser[index];
          return Container(
            width: 150,
            margin: EdgeInsets.fromLTRB(
              index == 0 ? 16 : 8,
              0,
              index == listUser.length - 1 ? 16 : 8,
              0,
            ),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 39, 24, 19),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      user.image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                RatingBar.builder(
                  initialRating: user.rating!,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.brown,
                  ),
                  ignoreGestures: true,
                  itemSize: 13,
                  onRatingUpdate: (rating) {},
                ),
                const SizedBox(height: 8),
                Text(
                  user.name!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${user.offer!.toString()} offers',
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.white60,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.brown,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget apartmentNear() {
    return SizedBox(
      height: 300, // Adjust the height as needed
      child: ListView.builder(
        itemCount: listApartmentNear.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          Apartment apartment = listApartmentNear[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(apartment: apartment),
                ),
              );
            },
            child: Container(
              width: 300, // Adjust the width as needed
              margin: EdgeInsets.fromLTRB(
                index == 0 ? 16 : 8,
                0,
                index == listApartmentNear.length - 1 ? 16 : 8,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            apartment.image!,
                            fit: BoxFit.cover,
                            width: double.maxFinite,
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 16,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4),
                            child: Text(
                              apartment.type!,
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.white),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(16),
                                topLeft: Radius.circular(16),
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: Text(
                              '\$ ${apartment.price!}',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          apartment.title!,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: apartment.rating!,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.brown,
                        ),
                        ignoreGestures: true,
                        itemSize: 15,
                        onRatingUpdate: (rating) {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Text(
                          apartment.location!.split(', ').first,
                          style:
                              TextStyle(fontSize: 18, color: Colors.grey[700]),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        apartment.users!.toString(),
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      Icon(Icons.person, size: 18, color: Colors.grey[700]),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
