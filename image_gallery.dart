import 'package:flutter/material.dart';

class ImageGallery extends StatefulWidget {
  // ignore: use_super_parameters
  const ImageGallery({Key? key}) : super(key: key);

  @override
  ImageGalleryState createState() => ImageGalleryState();
}

class ImageGalleryState extends State<ImageGallery> {
  final List<String> _imageUrls = [
    'https://scontent-mnl1-2.xx.fbcdn.net/v/t39.30808-6/414919048_1415926375991071_4452163003965494481_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeHvruWIedkVdELFMxKRATYdKW1lECyV13QpbWUQLJXXdJ-FpcJbIimqApG3zIFhtnLPTTfT4elPXYLygrruz7Xp&_nc_ohc=G4M9HvQGM04Q7kNvgH4BwAl&_nc_ht=scontent-mnl1-2.xx&oh=00_AYDtxuQ3nplTjf4MJpBWK3-Sde4yL3bbXeiVQAN7cadGhA&oe=66959C47', // Replace with your image URLs
    'https://scontent-mnl1-2.xx.fbcdn.net/v/t39.30808-6/350502834_557324299925347_1858827636262422531_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeHCeRQyNbNwzBQ4ywgA957LMO3EdbghRgEw7cR1uCFGAUz6RRXv7mmqVKoeBMCayRgQh9SKsrZB6GB0J5DVM5FQ&_nc_ohc=7y7CdQJRKTYQ7kNvgGGf_v4&_nc_ht=scontent-mnl1-2.xx&oh=00_AYBiEQmViXv3nWejjhID0Ma77fZqBV_PGYCUNJ57jy2ekw&oe=6695B741',
    'https://scontent-mnl1-2.xx.fbcdn.net/v/t39.30808-6/306348631_1133893010861077_5636626817246564135_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeEEAYRqWFDxZJnC0xFdeJZOeKJ2B3eQGRl4onYHd5AZGRyJptwNBdsgHzEqh8Ok1bJuWgVeXjyKwLkV6QTG42Wd&_nc_ohc=PicoySXtuPsQ7kNvgGggGY8&_nc_ht=scontent-mnl1-2.xx&oh=00_AYClUhHHlDGPaZK3AH_uCBIzlc9YzsBhA5h-SUQI5g1Hmg&oe=66959E8E',
  ];

  int _currentIndex = 0;

  void _nextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _imageUrls.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
          ),
          child: Stack(
            children: [
              Image.network(
                _imageUrls[_currentIndex],
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(
                bottom: 10.0,
                right: 10.0,
                child: ElevatedButton(
                  onPressed: _nextImage,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                  ),
                  child: const Text('Next Image'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
