import 'package:flutter/material.dart';
import 'package:intershipapp/screen/Register.dart';
import 'package:intershipapp/screen/Settings.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  // Add your user's profile image here
                  backgroundImage: NetworkImage(
                    'https://example.com/path-to-your-profile-image.jpg',
                  ),
                ),
                SizedBox(height: 16),
                Column(
                  children: [
                    Text(
                      'Vidita Singh',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text('India'),
                    const Text('Since 2022'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Wallet and Courses Container
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Wallet'),
                      Text('\$45.78'),
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                    width: 1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Courses'),
                      Text('3 Active'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              title: const Text('Your Favourite'),
              onTap: () {
                // Handle Payment action
              },
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text('Payment'),
              onTap: () {
                // Handle Payment action
              },
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Tell Your Friends'),
              onTap: () {
                // Handle Tell Your Friends action
              },
            ),
            ListTile(
              leading: const Icon(Icons.local_offer),
              title: const Text('Promotions'),
              onTap: () {
                // Handle Promotions action
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingsPage()));
                // Handle Settings action
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Log Out'),
              onTap: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => Register()));
                // Handle Log Out action
              },
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: ProfilePage(),
    ),
  );
}
