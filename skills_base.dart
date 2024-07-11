import 'package:flutter/material.dart';

abstract class SkillsBase extends StatelessWidget {
  const SkillsBase({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skills',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          buildContent(context), // Abstract method to be implemented
        ],
      ),
    );
  }

  Widget buildContent(BuildContext context);
}
