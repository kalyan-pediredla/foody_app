import 'package:Foody/NewHome.dart';
import 'package:Foody/mycart.dart';
import 'package:Foody/profile.dart';
import 'package:Foody/wishlist.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _currentindex=0;
  final List<Widget>screen=[MyHome(),const wishlist(),const mycart(),const profile()];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: CupertinoColors.white,color:Color.fromARGB( 255, 232, 204, 209),
        height: 55,index: 0,
        items: [
        Icon(Icons.home,color: Colors.red,),
        Icon(Icons.favorite,color: Colors.red,),
        Icon(Icons.shopping_cart,color: Colors.red,),
          Icon(Icons.person,color: Colors.red,),
      ],
        onTap: (index){
        setState(() {
          _currentindex=index;
        });
        },

      ),
      body: screen[_currentindex],
    );
  }
}
