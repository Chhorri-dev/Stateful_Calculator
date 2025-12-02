import 'package:flutter/material.dart';
import './my_stateless.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                      "https://static.independent.co.uk/s3fs-public/thumbnails/image/2013/09/12/17/potter.jpg"),
                ),
                SizedBox(height: 20),
                Text(
                  "Harry Potter",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  "This is my bio",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                )
              ],
            ),
          ),
          buildSettingsList(context),
        ],
      ),
    );
  }
}

Widget buildSettingsList(BuildContext context) {
  return Column(
    children: [
      ListTile(
        leading: Icon(Icons.person, color: Colors.blue),
        title: Text("Account"),
      ),
      Divider(height: 1),
      ListTile(
        leading: Icon(Icons.money, color: Colors.blue),
        title: Text("My Money"),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyStateless()),
          );
        },
      ),
      Divider(height: 1),
      ListTile(
        leading: Icon(Icons.favorite, color: Colors.blue),
        title: Text("My Favorite"),
      ),
    ],
  );
}
