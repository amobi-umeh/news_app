import 'package:flutter/material.dart';
import 'package:vacation_app/utilities/app_style.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      body: Container(
        child: Center(
          child: Text('Notification Screen'),
        ),
      ),
    );
  }
}
