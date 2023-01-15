import 'package:flutter/material.dart';
import 'package:vacation_app/utilities/app_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Container(
        child: Center(
          child: Text('Profile Screen'),
        ),
      ),
    );
  }
}
