import 'package:Foody/anniversaty.dart';
import 'package:flutter/material.dart';

class cakesanni extends StatefulWidget {
  const cakesanni({super.key});

  @override
  State<cakesanni> createState() => _softdrinksState();
}
class _softdrinksState extends State<cakesanni> {
  List<Contacts> li=<Contacts>[
    Contacts(imgPath: "https://bkmedia.bakingo.com/squ-choco-black-forest-cake-cake888blac-A.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Sinful Black Forest',price: 499),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-black-forest-cake0001chbl-A_1.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Black Forest Cake',price: 359),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-pineapple-cake0022pifr-AA_0.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Pineapple Cream Cake',price: 239),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-snicker-chocolate-cake0028choc-AA.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Snicker Fuse Chocolate',price: 459),
    Contacts(imgPath: "https://bkmedia.bakingo.com/chocolicious-marble-cake-cake2615choc-AA.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Chocolate Marble Cake',price: 480),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-vanilla-fruit-cake-cake894frui-AA.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Fruit Funfetti Vanilla Cake',price: 330),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-lip-smacking-chocolate-truffle-cake-cake2161choc-A_0.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Lip-smacking Chocolate..',price: 399),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-kitkat-cake-n-gems-topping-cake1786choc-AA.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Kitkat Cake N Gems To..',price: 299),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-blueberry-cake-1-cake889blue-AA.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Blueberry Cake',price: 370),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-chocolate-butterscotch-cake0007chbu-AA.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Butterscotch Chocolate C..',price: 350),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-red-velvet-fruit-cake0037refr-A_0.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Red Velvet Fruit Layer Cake',price: 699),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-chocolaty-creamy-round-cake-cake2160choc-A_0.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Chocolaty Creamy Round',price: 499),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-german-black-forest-cake0015chbl-AA.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Black Forest Cherry Cake',price: 379),
    Contacts(imgPath: "https://bkmedia.bakingo.com/squ-funfetti-rainbow-tower-cake0397exot-AA.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Rainbow Sprinkles Cake',price: 459),
    Contacts(imgPath: "https://bkmedia.bakingo.com/chocolate-chip-cake0008choc-AAA.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Choco Chip Truffle Cake',price: 299),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-red-velvet-cake-with-choco-sticks-cake1630redv-A_0.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Red Velvet Cake With Ch...',price: 499),
    Contacts(imgPath: "https://bkmedia.bakingo.com/caramel-cake-cake1605cara-AA.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Caramel Cake',price: 439),
    Contacts(imgPath: "https://bkmedia.bakingo.com/chocolate-truffle-fruit-cake-cake0756chfr-AA.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Chocolate Truffle Fruit C..',price: 399),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-oreo-chocolate-cake0021chex-AA.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Chocolate Oreo Cream C..',price: 239),
    Contacts(imgPath: "https://bkmedia.bakingo.com/sq-semi-naked-blackforest-cake-cake1640blac-A_0.jpg?tr=w-320,h-320,dpr-1.5,q-70", name:'Scrumptious Black Forest',price: 499),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>anniversary()));
      },icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.red,),
        splashColor: Colors.red,highlightColor: Colors.red[100],),
        title: Text('Cakes',
          style: TextStyle(fontWeight: FontWeight.bold,
              color: Colors.red[500],fontSize: 26),),
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
