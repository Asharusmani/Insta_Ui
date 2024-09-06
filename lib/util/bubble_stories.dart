import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {

final String text;
BubbleStories({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(60)
            ),
          ),
          SizedBox(height: 10,),
          Text(text),
        ],
      ),
    );
  }
}
