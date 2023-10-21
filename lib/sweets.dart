import 'package:Foody/home.dart';
import 'package:flutter/material.dart';

class sweet extends StatefulWidget {
  const sweet({super.key});

  @override
  State<sweet> createState() => _sweetState();
}

class _sweetState extends State<sweet> {
  List<Contacts> li=<Contacts>[
    Contacts(imgPath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUWJ4fvKaYSR8MNQX66-aDBocMrUIEp9uSXR1SUDeRiaYUjr9_wL0FXmOzFT_7v1DBJ-U&usqp=CAU", name:'Kaju katli',price: 900),
    Contacts(imgPath: "https://i0.wp.com/www.railrecipe.com/blog/wp-content/uploads/2023/01/gulab-jamun-on-train.jpg?w=570&ssl=1", name:'Gulab Jamun',price: 200),
    Contacts(imgPath: "https://i0.wp.com/www.railrecipe.com/blog/wp-content/uploads/2023/01/rasgulla-on-train.jpg?w=570&ssl=1", name:'Rasgulla',price: 190),
    Contacts(imgPath: "https://floweraura-blog-img.s3.ap-south-1.amazonaws.com/popular+dessert/post-8.jpg", name:'Dadar Gulung ',price: 500),
    Contacts(imgPath: "https://www.crazymasalafood.com/wp-content/images/ladoo-1.jpg", name:'Ladoo',price: 600),
    Contacts(imgPath: "https://www.crazymasalafood.com/wp-content/images/barf-1.jpg", name:'Barfi',price: 200),
    Contacts(imgPath: "https://www.crazymasalafood.com/wp-content/images/halwa.jpg", name:'Halwa',price: 240),
    Contacts(imgPath: "https://www.crazymasalafood.com/wp-content/images/soap.jpg", name:'Soan Papdi',price: 200),
    Contacts(imgPath: "https://www.crazymasalafood.com/wp-content/images/kalakand-4.jpg", name:'Kalakand',price: 350),
    Contacts(imgPath: "https://www.crazymasalafood.com/wp-content/images/gujiya-1.jpg", name:'Gujiya',price: 140),
    Contacts(imgPath: "https://www.crazymasalafood.com/wp-content/images/sandesh-3.jpg", name:'Sandesh',price: 100),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
      },icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.red,),splashColor: Colors.red,highlightColor: Colors.red[100],),
        title: Text('Sweets',
        style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.red[500],fontSize: 24),),
        centerTitle: true,backgroundColor: Colors.white,elevation: 0,
            ),
      body: ListView.builder(itemCount: li.length,
          itemBuilder: (BuildContext context ,i){
        return Container(
          height: 150,color: Colors.white,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image(height: 130,width: 130,
                  image: NetworkImage(li[i].imgPath),fit: BoxFit.cover,
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [SizedBox(height: 20,),
                  Text(li[i].name,style: TextStyle(fontSize: 19,
                      fontWeight: FontWeight.normal
                  ),),Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text('₹${li[i].price}.00',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                  )
                ],
              ),
            ],
          ),
        );
          }),
    );
  }
}
class Contacts{
  final String imgPath;
  final String name;
  final int price;
  Contacts({
    required this.imgPath,
    required this.name,
    required this.price,

  });
}
