import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  late PageController _pageController;
  List<String> images = [
    'assets/poster1.jpg',
    'assets/poster2.jpg',
    'assets/poster3.jpg',
  ];
  int activePage = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
          itemCount: images.length,
          pageSnapping: true,
          controller: _pageController,
          onPageChanged: (page) {
            setState(() {
              activePage = page;
            });
          },
          itemBuilder: (context, pagePosition) {
            return Container(
              margin: EdgeInsets.all(10),
              child: Image.asset(images[pagePosition]),
            );
          }),
    ));
  }
}
