import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  List<String> images = [
    'assets/poster1.jpg',
    'assets/poster2.jpg',
    'assets/poster3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(height: 180.0, autoPlay: true, initialPage: 0),
        items: images.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(i), fit: BoxFit.cover)),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
