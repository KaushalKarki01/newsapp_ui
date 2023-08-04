import 'package:flutter/material.dart';

class AllNews extends StatelessWidget {
  AllNews({super.key});
  final List newsData = [
    {
      'headline':
          'Trump pleads not guilty on 2020 election interference charges',
      'imgUrl':
          'https://static.independent.co.uk/2023/08/02/17/GettyImages-1563681481.jpg?quality=75&width=1200&auto=webp&quality=75&width=640&auto=webp',
    },
    {
      'headline':
          'Russian warship seen listing in Black Sea after Ukrainian sea drone attack on base',
      'imgUrl':
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/AF92/production/_124164944_gettyimages-501782322.jpg.webp',
    },
    {
      'headline':
          '2 U.S. Navy sailors arrested on charges of sharing sensitive data with China',
      'imgUrl':
          'https://images.axios.com/hP8PhvHsTcbv6DzNqKwGF8lKEU0=/0x458:5183x3373/1920x1080/2023/08/03/1691101527898.jpg?w=1920',
    },
    {
      'headline': 'Skylar Diggins-Smith says she can\'t use Mercury facilities',
      'imgUrl':
          'https://media.12news.com/assets/KPNX/images/dae52ccc-6790-4160-82bd-494c48ebf718/dae52ccc-6790-4160-82bd-494c48ebf718_1140x641.jpg',
    },
    {
      'headline':
          'What you should know about the latest Covid-19 surge. A doctor explains',
      'imgUrl':
          'https://media.cnn.com/api/v1/images/stellar/prod/230802094316-ny-people-wearing-mask-summer-file.jpg?c=16x9&q=h_720,w_1280,c_fill/f_webp',
    },
    {
      'headline': 'Suspect in Idaho killings will use an alibi defense',
      'imgUrl':
          'https://media.cnn.com/api/v1/images/stellar/prod/230627174237-02-kohberger-hearing-0627.jpg?c=16x9&q=h_720,w_1280,c_fill/f_webp',
    },
    {
      'headline':
          'Man accused of raping and impregnating child in Ohio is sentenced to life in prison after guilty plea',
      'imgUrl':
          'https://media.cnn.com/api/v1/images/stellar/prod/230705153235-gerson-fuentes-court-0705.jpg?c=16x9&q=h_720,w_1280,c_fill/f_webp',
    },
    {
      'headline':
          'Teacher who killed his wife found guilty of sexually abusing student he started new life with',
      'imgUrl':
          'https://media.cnn.com/api/v1/images/stellar/prod/221201203212-chris-dawson-220830.jpg?c=16x9&q=h_720,w_1280,c_fill/f_webp',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: ListView.builder(
          itemCount: newsData.length,
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
                    newsData[index]['imgUrl'],
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                      child: Text(newsData[index]['headline'],
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500))),
                ],
              ),
            );
          }),
    ));
  }
}
