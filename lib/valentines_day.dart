import 'package:flutter/material.dart';
import 'home.dart';
class valentinesday_food_items extends StatefulWidget {
  const valentinesday_food_items({super.key});

  @override
  State<valentinesday_food_items> createState() => _softdrinksState();
}
class _softdrinksState extends State<valentinesday_food_items> {
  List<Contacts> li=<Contacts>[
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/heart-shaped-foods-pizza-1643146423.jpeg?crop=1.00xw:0.834xh;0,0.0726xh&resize=980:*", name:'Pepperoni Pizza',price: 399),
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/heart-shaped-foods-chocolate-sugar-cookie-1643146422.jpeg?crop=0.5338775510204082xw:1xh;center,top&resize=980:*", name:'Chocolate Sugar Cookie',price: 150),
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/heart-shaped-foods-corn-flake-french-toast-1644440765.jpeg?crop=1.00xw:0.667xh;0,0.212xh&resize=980:*", name:'french Toast',price: 149),
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/heart-shaped-foods-pizza-pockets-1644442145.jpeg?crop=1.00xw:0.834xh;0,0.102xh&resize=980:*", name:'Pizza Pocket',price: 199),
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/heart-shaped-foods-tofu-1644443306.jpeg?crop=0.620xw:0.909xh;0.214xw,0&resize=980:*", name:'Savory Pomegranate Tofu',price: 160),
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/heart-shaped-foods-finger-sandwiches-1644443750.jpeg?crop=0.6127659574468085xw:1xh;center,top&resize=980:*", name:'Tea Sandwiches',price: 199),
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/heart-shaped-foods-egg-in-a-hole-1643236441.png?crop=0.6733238231098431xw:1xh;center,top&resize=980:*", name:'Egg in a Heart',price: 99),
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/heart-shaped-cake-1607620499.jpg?crop=0.668xw:1.00xh;0.196xw,0&resize=480:*", name:'Sprinkle Heart Cake',price: 299),
    Contacts(imgPath: "https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/03/1453497400-ghk020116ykmixed01.jpg?crop=0.736xw:0.737xh;0.119xw,0.263xh&resize=480:*", name:"Valentine's Day Brownies",price: 99),
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/directly-above-shot-of-breakfast-served-on-table-royalty-free-image-1579039818.jpg?crop=0.447xw:1.00xh;0.264xw,0&resize=480:*", name:'Heart-Shaped Eggs',price: 130),
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/pancakes-heart-shaped-foods-1579039217.jpg?crop=0.889xw:1xh;center,top&resize=480:*", name:'Heart-Shaped Pancakes',price: 200),
    Contacts(imgPath: "https://hips.hearstapps.com/ghk.h-cdn.co/assets/17/50/wd-truffle-box-cake.jpg?crop=1.0xw:1xh;center,top&resize=480:*", name:'Truffle Box Cake',price: 399),
    Contacts(imgPath: "https://hips.hearstapps.com/ghk.h-cdn.co/assets/17/50/1513367957-raspberry-rolls-handle-the-heat.jpg?crop=1.0xw:1xh;center,top&resize=480:*", name:'Raspberry Rolls',price: 200),
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/heart-shaped-cake-heart-shaped-foods-1579100209.jpg?crop=0.832xw:1.00xh;0.00170xw,0&resize=480:*", name:'Red Velvet Heart Cake',price: 399),
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/white-chocolate-reeses-rice-krispies-heart-shaped-foods-1579105024.jpg?crop=0.748xw:0.744xh;0.170xw,0.257xh&resize=480:*", name:"Reese's Rice Krispies",price: 99),
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/pizza-in-the-shape-of-heart-lying-on-a-paper-for-a-royalty-free-image-1579040022.jpg?crop=0.447xw:1.00xh;0.0357xw,0&resize=480:*", name:'Heart-Shaped Pizza',price: 499),
    Contacts(imgPath: "https://hips.hearstapps.com/hmg-prod/images/valentines-day-restaurant-specials-pizza-hut-1642610741.jpg?crop=0.752xw:1.00xh;0.0391xw,0&resize=480:*", name:'Pizza Hut',price: 379),

  ];
  @override
  Widget build(BuildContext context) {
    double wi=MediaQuery.of(context).size.width;
    double hi=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
      },icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.red,),
        splashColor: Colors.red,highlightColor: Colors.red[100],),
        title: Text('Food Items',
          style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.red[500],fontSize: 26),),
        centerTitle: true,backgroundColor: Colors.white,elevation: 0,toolbarHeight: 55,
      ),
      body: ListView.builder(itemCount: li.length,
          itemBuilder: (BuildContext context ,i){
            return Container(

              height: 150,color: Colors.white,
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
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
