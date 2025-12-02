import 'package:flutter/material.dart';
import 'views/my_profile_view.dart';
import 'views/home_view.dart';

void main() => runApp(const MyProfile());

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeView());
  }
}
