import 'package:flutter/material.dart';

abstract class InterestsBase extends StatelessWidget {
  const InterestsBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Interests',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          buildContent(context), // Abstract method to be implemented
        ],
      ),
    );
  }

  Widget buildContent(BuildContext context);
}
