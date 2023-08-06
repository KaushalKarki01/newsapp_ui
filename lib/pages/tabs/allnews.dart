import 'package:flutter/material.dart';
import 'package:newsapp/data/data.dart';

class AllNews extends StatelessWidget {
  AllNews({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: dummyNews.length,
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
        )
      ],
    ));
  }
}
