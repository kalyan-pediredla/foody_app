import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class soft extends StatefulWidget {
  const soft({super.key});

  @override
  State<soft> createState() => _softState();
}

// ignore: camel_case_types
class _softState extends State<soft> {
  int count=1;
  void inc(){
    setState(() {
      count++;
    });
  }
  List<Contacts> li=<Contacts>[
    Contacts(price: 99)
  ];
  @override
  Widget build(BuildContext context) {
    double wi=MediaQuery.of(context).size.width;
    double hi=MediaQuery.of(context).size.height;

    Container container(double hi,double wi,decoration )
    {
      return Container(
        width: wi,
        height: hi/2.3,
        decoration:decoration,
      );
    }
    return Scaffold(
      bottomNavigationBar: BottomAppBar(shadowColor: Colors.red,height: 50,
        shape: const CircularNotchedRectangle(),child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
          Container(color: Colors.white,width: wi/2,height: hi/15,
              child: const Center(child: Text('Add to cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))),Container(height: 50,width: 3,color: Colors.white,),
          Container(color: Colors.red[500],width: wi/2.04,height: hi/15,
              child: const Center(child: Text('Buy now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))),
        ],
        ),
      ),
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
        title: TextButton(onPressed: (){},child: Text('Product Details',
          style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.red[500],fontSize: 24),),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: const Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black,size: 26,),splashColor: Colors.red,),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded,
            color: Colors.black,size: 24,),tooltip: 'Search',splashColor: Colors.red,),

          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined,
            color: Colors.black,size: 24,),tooltip: 'My Cart',splashColor: Colors.red,)
        ],
      ),
      body:Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15,top: 10,left: 10,right: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 40,height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: CupertinoColors.white,boxShadow: const [
                        BoxShadow(offset: Offset(1,0),
                        blurRadius: 2,spreadRadius: 2,color: Colors.grey,)
                    ]
                    ),
                    child: Center(child: IconButton(onPressed: (){},icon:const Icon(Icons.share),
                      color: Colors.grey[700],))),
                Container(width: 40,height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: CupertinoColors.white,boxShadow: const [
                      BoxShadow(offset: Offset(1,0),blurRadius: 2,spreadRadius: 2,
                      color: Colors.grey,)
                    ]
                    ),
                    child: Center(child: IconButton(onPressed: (){},icon:const Icon(Icons.favorite),
                      color: Colors.grey[700],))),
              ],
            ),
          ),
          container(
            
            hi, wi, const BoxDecoration(
            image: DecorationImage(image: NetworkImage('https://www.lacademie.com/wp-content/uploads/2022/02/soft-serve.webp'),
            fit: BoxFit.cover)
          )
          ), Padding(
            padding: const EdgeInsets.only(top: 40,left: 18),
            child: Text("Soft Serve Ice Cream",style: TextStyle(fontWeight: FontWeight.values[4],fontSize: 18),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 18),
            child: Row(
              children: [const Text('MRP',style: TextStyle(fontSize: 18),),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('₹${li[0].price*count}.00',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.red),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(width: 130,height: 40,color: Colors.white,
                      child: Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: drc, icon: const Icon(Icons.remove)),
                          Text("$count",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red[500]),),
                          IconButton(onPressed: inc, icon: const Icon(Icons.add)),
                        ],
                      )),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
  void drc(){
    setState(() {
      if(count>=2){
        count--;
      }
    });
  }
}

class Contacts{
  final int price;
  Contacts({
    required this.price,
  });
}
