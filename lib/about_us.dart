import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  // Define your team members and their positions
  final List<Map<String, String>> teamMembers = [
    {'name': 'Elsie', 'position': '535220076'},
    {'name': 'Vincent C', 'position': '535220075'},
    {'name': 'Yoga', 'position': '535220247'},
    {'name': 'Widya', 'position': '535220262'},
    {'name': 'Michael', 'position': '535220073'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'About Us',
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    'MEET OUR TEAM',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildTeamMember(teamMembers[0]['name']!, teamMembers[0]['position']!, 'assets/Elsie.jpg'),
                      _buildTeamMember(teamMembers[1]['name']!, teamMembers[1]['position']!, 'assets/vc.jpg'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildTeamMember(teamMembers[2]['name']!, teamMembers[2]['position']!, 'assets/yoga.jpg'),
                      _buildTeamMember(teamMembers[3]['name']!, teamMembers[3]['position']!, 'assets/widy.jpg'),
                      _buildTeamMember(teamMembers[4]['name']!, teamMembers[4]['position']!, 'assets/michael.jpg'),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    'DevMindz Hotel & Restaurant',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Discover DevMindz Hotel & Restaurant, a blend of modern comfort and timeless elegance in [City Name]. Enjoy luxurious accommodations, panoramic city views, and impeccable service. Indulge in culinary delights at our award-winning restaurant or relax in our spa and wellness center. Whether for business or pleasure, DevMindz Hotel & Restaurant promises a memorable experience with unmatched sophistication and hospitality.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamMember(String name, String position, String imagePath) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(height: 10),
        Text(name),
        Text(position),
      ],
    );
  }
}
