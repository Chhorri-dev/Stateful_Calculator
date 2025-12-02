import 'package:flutter/material.dart';
import 'package:helloworld/views/my_profile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://static.independent.co.uk/s3fs-public/thumbnails/image/2013/09/12/17/potter.jpg"),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Harry Potter",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )
            ]),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const MyProfileView()));
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
            onTap: () {},
          ),
        ],
      )),
    );
  }
}
