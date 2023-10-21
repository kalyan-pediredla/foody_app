import 'package:flutter/material.dart';
import 'home.dart';
class juices extends StatefulWidget {
  const juices({super.key});

  @override
  State<juices> createState() => _juicesState();
}

class _juicesState extends State<juices> {
  List<Contacts> li=<Contacts>[
    Contacts(imgPath: "https://www.healthkart.com/connect/wp-content/uploads/2021/07/1.-Black-Grape-Juice-768x433.jpg", name:'Black Grape Juice',price: 39),
    Contacts(imgPath: "https://www.healthkart.com/connect/wp-content/uploads/2021/07/2.-Carrot-Juice-768x433.jpg", name:'Carrot Juice',price: 29),
    Contacts(imgPath: "https://www.healthkart.com/connect/wp-content/uploads/2021/07/3.-Avocado-and-papaya-Juice-768x433.jpg", name:'Avocado and Papaya Juice',price: 39),
    Contacts(imgPath: "https://www.healthkart.com/connect/wp-content/uploads/2021/07/4.-Amla-Juice-768x433.jpg", name:'Amla Juice',price: 29),
    Contacts(imgPath: "https://www.healthkart.com/connect/wp-content/uploads/2021/07/5.-Pineapple-and-kale-Juice-768x433.jpg", name:'Pineapple and Kale Juice',price: 35),
    Contacts(imgPath: "https://www.healthkart.com/connect/wp-content/uploads/2021/07/6.-Active-Apple-Juice-768x433.jpg", name:'Apple Juice',price: 59),
    Contacts(imgPath: "https://www.healthkart.com/connect/wp-content/uploads/2021/07/7.-Cucumber-kale-and-pear-Juice-768x433.jpg", name:'Cucumber,and Pear Juice',price: 39),
    Contacts(imgPath: "https://www.healthkart.com/connect/wp-content/uploads/2021/07/8.-Orange-Juice-768x433.jpg", name:'Orange Juice',price: 39),
    Contacts(imgPath: "https://www.healthkart.com/connect/wp-content/uploads/2021/07/9.-Ginger-ale-768x433.jpg", name:'Ginger Ale',price: 29),
    Contacts(imgPath: "https://www.healthkart.com/connect/wp-content/uploads/2021/07/10.-Watermelon-and-lychee-juice-768x433.jpg", name:'Watermelon Juice',price: 25),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
      },icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.red,),
        splashColor: Colors.red,highlightColor: Colors.red[100],),
        title: Text('Juices',
          style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.red[500],fontSize: 24),),
        centerTitle: true,backgroundColor: Colors.white,elevation: 0,
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
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
