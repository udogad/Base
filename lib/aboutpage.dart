import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 16),
                    Text(
                      "This application is designed to provide the best user experience. \n We focus on modern UI/UX standards.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            ExpansionTile(
              title: Text("FAQ"),
              children: <Widget>[
                ListTile(
                  title: Text("What is this app about?"),
                  subtitle: Text(
                      "This app helps users to sign up, login, and explore information."),
                ),
                ListTile(
                  title: Text("How can I contact support?"),
                  subtitle: Text(
                      "You can contact us via email or social media channels."),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
