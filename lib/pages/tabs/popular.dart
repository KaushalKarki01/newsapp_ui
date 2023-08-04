import 'package:flutter/material.dart';
import 'package:newsapp/widgets/carousel.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: CarouselWidget(),
    ));
  }
}
