import 'package:flutter/material.dart';
import 'package:untitled3/usermodel.dart'; // Import your UserModel if not already imported

class UserProfile extends StatelessWidget {
  final UserModel user;

  const UserProfile({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${user.name}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Email: ${user.email}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Age: ${user.age}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Address: ${user.address}',
              style: TextStyle(fontSize: 18),
            ),
            // Add more fields as needed
          ],
        ),
      ),
    );
  }
}
