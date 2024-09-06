import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:insta_ui/util/bubble_stories.dart';
import 'package:insta_ui/util/tabbar1.dart';
import 'package:insta_ui/util/tabbar2.dart';
import 'package:insta_ui/util/tabbar3.dart';
import 'package:insta_ui/util/tabbar4.dart';


class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 4,
      child: Scaffold(
      
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40,left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //profile
                  Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                    ),
      
                  //post ,followers
      
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Column(children: [Text("60",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("posts"),
                      ],),
                      Column(children: [Text("483",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("Followers"),
                      ],),
                      Column(children: [Text("60",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text("Following"),
                      ],),
                    ],
                    ),
                  ),
              ]),
            ),
      
      
            //name  and  bio
             Padding(
              padding: const  EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ashar Usmani",
                    style: TextStyle(fontWeight: FontWeight.bold,),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                        "I am a Android Developer"
                    ),
                  ),
                  Text(
                    "m.youtube.com/asher/",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                     height: 25,width: 120,
                      child: Center(child: Text("Edit Profile")),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(5)),
                  ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 25,width: 120,
                      child: Center(child: Text("Share Profile")),
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(5)),),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 25,width: 5,
                      child: Icon(Icons.person_add_alt_outlined  ),
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(5)),),
                  ),
                ),
      
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 10),
              child: Row(children: [
                BubbleStories(text: 'Farewell'),
                BubbleStories(text: 'Party'),
                BubbleStories(text: 'Tour'),

              ],),
            ),
            TabBar(
              tabs:[
              Tab(
                icon: Icon(Icons.grid_3x3_outlined),),
              Tab(
                icon: Icon(Icons.video_call),),

              Tab(
                icon: Icon(Icons.shop),),

              Tab(
                icon: Icon(Icons.person),),

            ]),
            Expanded(
              child: TabBarView(children: [
              AccountTab1(),
                AccountTab2(),
              AccountTab3(),
              AccountTab4(),]),
            )

            ]),
      ),
    );
  }
}
