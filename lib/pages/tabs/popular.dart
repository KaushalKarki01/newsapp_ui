import 'package:flutter/material.dart';
import 'package:newsapp/pages/tabs/allnews.dart';
import 'package:newsapp/widgets/carouselwidget.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 10),
        CarouselWidget(),
        SizedBox(height: 30),
        Divider(),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              children: [
                Text('Trending News',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                Icon(Icons.trending_up)
              ],
            )),
        Divider(),
      ]),
    );
  }
}
