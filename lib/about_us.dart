import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart'; // Import webview_flutter package

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
        title: Text('About Us'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
                    'Our Location',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 300,
                    child: WebView(
                      initialUrl: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d991.1319931938575!2d106.78571502917425!3d-6.198833870896448!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f6b7bc85b149%3A0x2a0e9993dacecfec!2sTarumanagara%20University!5e0!3m2!1sen!2sid!4v1679874648982!5m2!1sen!2sid',
                      javascriptMode: JavascriptMode.unrestricted,
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
