import 'package:flutter/material.dart';
import 'package:newsapp/widgets/carouselwidget.dart';
import 'package:newsapp/widgets/topic_widget.dart';
import 'package:newsapp/data/data.dart';

class PopularPage extends StatelessWidget {
  const PopularPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 10),
          const CarouselWidget(),
          const SizedBox(height: 30),

          //trending news section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                TopicWidget(text: 'Trending', icon: Icons.trending_up),

                SingleChildScrollView(
                  child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 120,
                          decoration: BoxDecoration(boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                spreadRadius: 0.5,
                                offset: Offset(6, 3))
                          ], color: Colors.grey[300]),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Image.network(
                                dummyNews[index]['imgUrl'],
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                  child: Text(dummyNews[index]['headline'],
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500))),
                            ],
                          ),
                        );
                      }),
                ),

                //For User Section
                TopicWidget(text: 'For You', icon: Icons.arrow_forward_ios),
                SingleChildScrollView(
                  child: ListView.builder(
                      itemCount: 2,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 120,
                          decoration: BoxDecoration(boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                spreadRadius: 0.5,
                                offset: Offset(6, 3))
                          ], color: Colors.grey[300]),
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            children: [
                              Image.network(
                                dummyNews[index]['imgUrl'],
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                  child: Text(dummyNews[index]['headline'],
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500))),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
