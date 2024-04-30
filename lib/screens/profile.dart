import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Account',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.2,
                  backgroundImage:
                      AssetImage('assets/logo.png'), // Change the image path
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 222, 218, 218),
                  ),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Samantha',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'samantha@gmail.com',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.blue),
              title: Text(
                '+1234567890',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.blue),
              title: Text(
                '123 Main Street, Blantyre, MW',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.work, color: Colors.blue),
              title: Text(
                'Software Engineer',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.calendar_today, color: Colors.blue),
              title: Text(
                'Joined: January 1, 2020',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
