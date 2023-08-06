import 'package:flutter/material.dart';

class TopicWidget extends StatelessWidget {
  TopicWidget({required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              children: [
                Text(text,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                Icon(icon)
              ],
            )),
        Divider(),
      ],
    );
  }
}
