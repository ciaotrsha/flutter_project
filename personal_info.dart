import 'package:flutter/material.dart';
import 'image_gallery.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Personal Information', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Text(
          'Name: Patricia Anne B. Mangubat',
          style: TextStyle(fontSize: 16.0),
        ),
        Text(
          'Age: 23 years old',
          style: TextStyle(fontSize: 16.0),
        ),
        Text(
          'Loving life, chasing dreams.',
          style: TextStyle(fontSize: 16.0),
        ),
        SizedBox(height: 20.0,),
        ImageGallery(),
      ],
    );
  }
}
