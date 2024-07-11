import 'package:flutter/material.dart';
import 'package:flutter_application_1/interest_base.dart';

class MyInterests extends InterestsBase {
  const MyInterests({super.key});

  @override
  Widget buildContent(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Programming:',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          '- Mobile App Development',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 16.0),
        Text(
          'Technology:',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          '- AI & Machine Learning',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 16.0),
        Text(
          'Hobbies:',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          '- Photography, Reading',
          style: TextStyle(fontSize: 16.0),
        ),
        // Add more interests or categories as needed
      ],
    );
  }
}
