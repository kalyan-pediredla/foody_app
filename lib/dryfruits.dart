import 'package:flutter/material.dart';

import 'home.dart';
class dryfruits extends StatefulWidget {
  const dryfruits({super.key});

  @override
  State<dryfruits> createState() => _dryfruitsState();
}

class _dryfruitsState extends State<dryfruits> {
  List<Contacts> li=<Contacts>[
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Almonds._V277983023_.jpg", name:'Almonds',price: 899),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Cashews._V277983022_.jpg", name:'Cashews',price: 599),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Peanuts._V277983058_.jpg", name:'Peanuts',price: 99),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Pistachios._V277983059_.jpg", name:'Pistachios',price: 399),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Walnuts._V277983021_.jpg", name:'Walnuts',price: 299),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Hazelnuts._V277983020_.jpg", name:'Hazelnuts',price: 239),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Pecans._V277983021_.jpg", name:'Pecans',price: 199),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Pine._V277983056_.jpg", name:'Pine',price: 190),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Raisins._V277983017_.jpg", name:'Raisins',price: 129),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Dates._V277983017_.jpg", name:'Dates',price: 139),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Figs._V277983016_.jpg", name:'Figs',price: 399),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Prunes._V277983059_.jpg", name:'Prunes',price: 299),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Apricots._V277983058_.jpg", name:'Apricots',price: 199),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Cherries._V277983016_.jpg", name:'Cherries',price: 199),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Berries._V277983056_.jpg", name:'Berries',price: 199),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Mango._V277983020_.jpg", name:'Mango',price: 99),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Sunflower-seeds._V277981723_.jpg", name:'Sunflower',price: 199),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Flax-Seeds._V277981717_.jpg", name:'Flax',price: 159),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Chia-Seeds._V277981722_.jpg", name:'Chia',price: 219),
    Contacts(imgPath: "https://images-eu.ssl-images-amazon.com/images/G/31/img16/Grocery/DFN_Pg/Pumpkin-Seeds._V277981717_.jpg", name:'Pumpkin',price: 169),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
      },icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.red,),
        splashColor: Colors.red,highlightColor: Colors.red[100],),
        title: Text('Dry Fruits',
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
                  Column(mainAxisAlignment: MainAxisAlignment.center,
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
