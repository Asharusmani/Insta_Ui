import 'package:flutter/material.dart';
import 'package:insta_ui/util/bubble_stories.dart';
import 'package:insta_ui/util/user_post.dart';

class UserHome extends StatelessWidget {
   UserHome({super.key});
final List people =['Ashar','Laiba','Hamna','Anas','Ayesha','Faiqa','Wania','Shayan','Hamna','Anas','Haiqa','Umaima'];

 final List post = ['Ashar Usmani','Laiba Shahid','Hamna Khan','Anas Usmani','Ayesha Baig','Faiqa Siddqui'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),

            Row(
              children: [
              Icon(Icons.add),
              Padding(padding: EdgeInsets.all(15),
              child: Icon(Icons.favorite),
      ),
              Icon(Icons.share),
            ],)


          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: people.length,itemBuilder: (context,index){
             return BubbleStories(text: people[index]);
      }),
          ),
          //posts
          Expanded(
            child: Container(height: 200,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
                itemCount: post.length,
                itemBuilder: (context,index){
                  return UserPost(name: post[index]);
              }),
            
            ),
          ),
      ]
      )
    );
  }
}
