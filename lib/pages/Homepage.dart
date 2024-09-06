import 'package:flutter/material.dart';
import 'package:insta_ui/pages/Account.dart';
import 'package:insta_ui/pages/Home.dart';
import 'package:insta_ui/pages/Reels.dart';
import 'package:insta_ui/pages/Search.dart';
import 'package:insta_ui/pages/Shop.dart';

class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex=0;
  void navigationBar(int index){
    setState(() {
      selectIndex=index;
    });
  }
  final  List childern =[
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];


   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: childern[selectIndex],
     bottomNavigationBar: BottomNavigationBar(

       currentIndex: selectIndex,
       onTap: navigationBar,
       type: BottomNavigationBarType.fixed,
       items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
           BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
    BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "Reels"),
         BottomNavigationBarItem(icon: Icon(Icons.shop),label: "Shop"),
         BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
     ],
     ),
     );
   }
}
