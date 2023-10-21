import 'package:Foody/birthdaycakes.dart';
import 'package:Foody/chocolates.dart';
import 'package:flutter/material.dart';


import 'home.dart';
class birthday extends StatefulWidget {
  const birthday({super.key});

  @override
  State<birthday> createState() => _anniversaryState();
}

class _anniversaryState extends State<birthday> {

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
        title: Text('Special Cakes and Chocolates',
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
                    padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                    child: GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>birthdaycakes()));
                    },
                        child: container(wi/2.15, hi/2,BoxDecoration(
                            image: DecorationImage(image: NetworkImage('https://bkmedia.bakingo.com/flowery-touch-pastel-cream-cake-cake2850choc-A.jpg?tr=w-320,h-320,dpr-1.5,q-70'))))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 8),
                    child: GestureDetector(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>birthday_chocolates()));},
                        child: container(wi/2.15, hi/2,BoxDecoration(
                            image: DecorationImage(image: NetworkImage('https://assets.winni.in/product/primary/2023/1/81611.jpeg?dpr=1&w=400')))
                        )),
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
