import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

int _current = 0;

final List<String> images = [
  'assets/images/blue-brown.jpg',
  'assets/images/fishing-boat.jpg',
  'assets/images/landscape-of-morning.jpg',
  'assets/images/beautiful-view.jpg',
];

List<Widget> generateImagesTiles() {
  return images
      .map((element) => ClipRRect(
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
          ))
      .toList();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Stack(
        children: [
          CarouselSlider(
            items: generateImagesTiles(),
            options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 20 / 10,
                onPageChanged: (index, other) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
