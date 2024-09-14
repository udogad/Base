import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Base"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer(); // Opens the drawer
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(
                  context, '/about'); // Navigates to the About page
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: const Color.fromARGB(255, 241, 10, 10),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Sign Up'),
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Login'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/signup'); // Navigates to the Sign Up page
                  },
                  child: Text('Go to Sign Up Page'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/login'); // Navigates to the Login page
                  },
                  child: Text('Go to Login Page'),
                ),
              ],
            ),
            // Footer Section
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Copyright 2024. All rights reserved, by Udogad.',
                style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 125, 205, 245)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
