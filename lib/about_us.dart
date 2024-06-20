import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart'; // Import webview_flutter package

class AboutUsScreen extends StatelessWidget {
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
                      _buildTeamMember('Nama1', 'Posisi'),
                      _buildTeamMember('Nama2', 'Posisi'),
                      _buildTeamMember('Nama3', 'Posisi'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildTeamMember('Nama4', 'Posisi'),
                      _buildTeamMember('Nama5', 'Posisi'),
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

  Widget _buildTeamMember(String name, String position) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Replace with actual image URLs
        ),
        SizedBox(height: 10),
        Text(name),
        Text(position),
      ],
    );
  }
}
