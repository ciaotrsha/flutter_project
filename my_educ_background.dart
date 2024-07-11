import 'package:flutter/material.dart';
import 'educ_background_base.dart'; // Import the base class

class MyEducationalBackground extends EducationalBackgroundBase {
  const MyEducationalBackground({super.key});

  @override
  Widget buildContent(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bachelor of Science in Information Technology',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          'Batangas State University - TNEU',
          style: TextStyle(
            fontSize: 16.0,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        SizedBox(height: 16.0),
        Text(
          'Achievements:',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          '- Dean\'s List (2023 - 2024)',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(
          height: 16.0,
        ),
        Text(
          'Affliations:',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          '- CICS Student Council Treasurer (2023 - Present)',
          style: TextStyle(fontSize: 16.0),
        ),
        Text(
          '- IINTESS Treasurer 2023 - Present)',
          style: TextStyle(fontSize: 16.0),
        ),
      ],
    );
  }
}
