import 'package:Foody/anni_sweets.dart';
import 'package:Foody/cakesanni.dart';
import 'package:Foody/chocolatesanni.dart';
import 'package:flutter/material.dart';
import 'home.dart';
class anniversary extends StatefulWidget {
  const anniversary({super.key});

  @override
  State<anniversary> createState() => _anniversaryState();
}

class _anniversaryState extends State<anniversary> {

  @override
  Widget build(BuildContext context) {
      double wi=MediaQuery.of(context).size.width;
      double hi=MediaQuery.of(context).size.height;
      Container container(double wi,double hi,decoration)
      {
        return Container(
          width: wi,
          height: hi/1.9,
          decoration: decoration,

        );
      }
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
      },icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.red,),
        splashColor: Colors.red,highlightColor: Colors.red[100],),
        title: Text('Celebrate the Love',
          style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.red[500],fontSize: 24),),
        centerTitle: true,backgroundColor: Colors.white,elevation: 0,
      ),
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 8),
                    child: GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>chocolatess()));},
                        child: container(wi/2.15, hi/2,BoxDecoration(
                            image: DecorationImage(image: NetworkImage('https://assets.winni.in/product/primary/2023/1/81611.jpeg?dpr=1&w=400')))
                            )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                    child: GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>cakesanni()));
                    },
                        child: container(wi/2.15, hi/2,BoxDecoration(
                            image: DecorationImage(image: NetworkImage('https://assets.winni.in/product/primary/2022/10/76240.png?dpr=1&w=400'))))),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 8),
                    child: GestureDetector(onTap: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>sweet_anni()));},
                        child: container(wi/2.15, hi/2,BoxDecoration(
                            image: DecorationImage(image: NetworkImage('https://www.oyorooms.com/blog/wp-content/uploads/2018/07/shutterstock_725231338.jpg'),fit: BoxFit.cover)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,right: 8,left: 8),
                    child: container(wi/2.15, hi/2,BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://img.freepik.com/free-vector/abstract-coming-soon-halftone-style-background-design_1017-27282.jpg?size=626&ext=jpg'))) ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),


    );
  }
}
