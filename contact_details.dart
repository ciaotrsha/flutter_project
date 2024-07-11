import 'package:flutter/material.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  bool _hasError = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone),
              SizedBox(width: 10.0),
              Text(
                'Contact Number: 0994-602-9574',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.email),
              SizedBox(width: 10.0),
              Text(
                'patriciamangubat577@gmail.com',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook),
              SizedBox(width: 8.0),
              Text(
                'Patricia Mangubat',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              SizedBox(
                height: 140.0,
                child: CircleAvatar(
                  radius: 70.0,
                  backgroundImage: const NetworkImage(
                    'https://scontent.fmnl4-4.fna.fbcdn.net/v/t39.30808-6/271239364_969162720667441_5828365769158067869_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeEaPgvKARtGuUkDNeRABZyVePHp8_JNSD948enz8k1IP0WY0i5aSHB3hNxfYfGUDg-CxhLsiFcTrsRZ2ieiou9L&_nc_ohc=jFieMQBCJwkQ7kNvgHGmPcy&_nc_ht=scontent.fmnl4-4.fna&oh=00_AYAHZ-Op-GG848TPD8hw4EQnHEKeaV7wGJFG5X-xf8oAHg&oe=6695C8C6',
                  ),
                  onBackgroundImageError: (_, __) {
                    setState(() {
                      _hasError = true;
                    });
                  },
                  child: _hasError
                      ? const Icon(Icons.error, size: 70.0)
                      : Container(),
                ),
              ),
              if (_hasError)
                const Positioned(
                  top: 0.0,
                  child: CircleAvatar(
                    radius: 70.0,
                    child: Icon(Icons.person, size: 100.0),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
