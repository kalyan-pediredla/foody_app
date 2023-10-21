import 'package:Foody/anniversaty.dart';
import 'package:flutter/material.dart';
class chocolatess extends StatefulWidget {
  const chocolatess({super.key});

  @override
  State<chocolatess> createState() => _chocolatesState();
}

class _chocolatesState extends State<chocolatess> {
  List<Contacts> li=<Contacts>[
    Contacts(imgPath: "https://media.publit.io/file/w_244,h_242,c_fit,q_80/screenshot-2022-06-22-115353.png", name:'Cadbury chocolates',price: 69),
    Contacts(imgPath: "https://media.publit.io/file/w_244,h_244,c_fill,q_80/main-qimg-0e8c15b89c06579866d00b1989631d25-500x500.jpg", name:'Amul chocolates',price: 99),
    Contacts(imgPath: "https://media.publit.io/file/w_244,h_252,c_fit,q_80/screenshot-2022-06-22-115850.png", name:'Mars chocolates',price: 59),
    Contacts(imgPath: "https://media.publit.io/file/w_244,h_244,c_fill,q_80/screenshot-2022-06-22-120036.png", name:'Ferrero rocher chocolates',price: 299),
    Contacts(imgPath: "https://media.publit.io/file/w_244,h_243,c_fit,q_80/screenshot-2022-06-22-120402.png", name:'Toblerone chocolates',price: 29),
    Contacts(imgPath: "https://media.publit.io/file/w_244,h_244,c_fill,q_80/screenshot-2022-06-22-120834.png", name:'Lotte chocolates',price: 39),
    Contacts(imgPath: "https://crazymasalafood.com/wp-content/images/2022/09/1.AMUL-CHOCOLATE-696x696.png.webp", name:'Amul Chocolate',price: 99),
    Contacts(imgPath: "https://floweraura-blog-img.s3.ap-south-1.amazonaws.com/top-15-most-popular-chocolate-brands-name-in-india.jpg", name:'Cadbury Chocolates',price: 29),
    Contacts(imgPath: "https://www.bigbasket.com/media/uploads/p/s/40231295_1-nestle-kit-kat-4-crisp-finger-covered-wafer-milk-chocolate.jpg", name:'Kit Kat',price: 29),
    Contacts(imgPath: "https://floweraura-blog-img.s3.ap-south-1.amazonaws.com/nestle-chocolates.jpg", name:'Amul Chocolates',price: 39),
    Contacts(imgPath: "https://floweraura-blog-img.s3.ap-south-1.amazonaws.com/lotus-chocolates.jpg", name:'Campco Chocolates',price: 25),
    Contacts(imgPath: "https://floweraura-blog-img.s3.ap-south-1.amazonaws.com/hershey-chocolates.jpg", name:'Pacari Chocolates',price: 30),
    Contacts(imgPath: "https://floweraura-blog-img.s3.ap-south-1.amazonaws.com/lindt-chocolates.jpg", name:'Fabelle Chocolate',price: 199),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>anniversary()));
      },icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.red,),
        splashColor: Colors.red,highlightColor: Colors.red[100],),
        title: Text('Chocolates',
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
