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
        title: const Text('User Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${user.name}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Email: ${user.email}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Age: ${user.age}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            Text(
              'Address: ${user.address}',
              style: const TextStyle(fontSize: 18),
            ),
            // Add more fields as needed
          ],
        ),
      ),
    );
  }
}
