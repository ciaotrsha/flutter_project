import 'package:flutter/material.dart';
import 'skills_base.dart'; // Import the base class

class MySkills extends SkillsBase {
  const MySkills({super.key});

  @override
  Widget buildContent(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Programming Languages:',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          '- Dart, JavaScript, Python',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 16.0),
        Text(
          'Frameworks & Libraries:',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          '- Flutter, React.js, Django',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 16.0),
        Text(
          'Tools & Technologies:',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          '- Git, VS Code',
          style: TextStyle(fontSize: 16.0),
        ),
        // Add more skills or categories as needed
      ],
    );
  }
}
