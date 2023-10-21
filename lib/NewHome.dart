import 'package:Foody/sweets.dart';
import'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';
import 'anniversaty.dart';
import 'birthday.dart';
import 'cakes.dart';
import 'chocolates.dart';
import 'dryfruits.dart';
import 'icecream.dart';
import 'juices.dart';
import 'login.dart';
import 'valentines_day.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    List<CarouselItem> itemList = [
      CarouselItem(
        image: const NetworkImage(
          'https://img.freepik.com/free-vector/realistic-ice-cream-promo-template_52683-64762.jpg?size=626&ext=jpg',
        ),
        boxDecoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.bottomCenter,
            end: FractionalOffset.topCenter,
            colors: [
              Colors.blueAccent.withOpacity(1),
              Colors.black.withOpacity(.3),
            ],
            stops: const [0.0, 1.0],
          ),
        ),
        title:
        '',

        onImageTap: (i) {},
      ),
      CarouselItem(
        image: const NetworkImage(
          'https://img.freepik.com/premium-psd/special-delicious-ice-cream-social-media-creative-web-banner-design-template_572938-65.jpg?size=626&ext=jpg',
        ),
        onImageTap: (i) {},
      ),
      CarouselItem(
        image: const NetworkImage('https://img.freepik.com/free-psd/food-social-media-promotion-instagram-banner-post-design-template_202595-475.jpg?size=626&ext=jpg'),
        onImageTap: (i) {},
      ),
    ];
    double wi=MediaQuery.of(context).size.width;
    double hi=MediaQuery.of(context).size.height;
    bool isMobile(double wi) {
      if (wi <= 360) {
        return true;
      }
      return false;
    }
    Container container(double hi,double wi,decoration )
    {
      return Container(
        width: wi,
        height: hi/1.9,
        decoration:decoration,
      );
    }
    return Scaffold(
        appBar: AppBar(iconTheme: const IconThemeData(color: Colors.red,size: 26,),
    backgroundColor: Colors.white,elevation: 0,
    title: TextButton(onPressed: (){}, child: Text('Foody',
    style: TextStyle(fontWeight: FontWeight.bold,
    color: Colors.red[500],fontSize: 26),),),
    centerTitle: true,

    actions: [
    IconButton(onPressed: (){}, icon: const Icon(Icons.search_rounded,
    color: Colors.red,size: 26,),tooltip: 'Search',splashColor: Colors.red,),
    IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined,
    color: Colors.red,size: 26,),tooltip: 'My Cart',splashColor: Colors.red,)
    ],
    ),

    drawer: Drawer(width: 250,backgroundColor: const Color.fromARGB(
        255, 232, 204, 209),

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    child: Column(children: [
    const DrawerHeader(child: Column(children: [
    CircleAvatar(
    radius: 50,
    backgroundColor: Colors.white,
    backgroundImage: NetworkImage('https://image.shutterstock.com/image-vector/food-studio-vector-logo-kitchen-260nw-610419776.jpg'),
    ),
    SizedBox(height: 10,),Text('Foody',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 20))
    ],
    )
    ),const Divider(
    height: 1,
    thickness: 0.5,
    color: Colors.black,
    ),

    const Divider(
    thickness: 0.1,height: 1,color: Colors.grey,
    ),
    ListTile(
    leading: const Icon(Icons.home_outlined,color: Colors.black87,),
    title: const Text('home',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 16),),
    onTap: (){
    },
    ),
    const Divider(
    thickness: 0.1,height: 1,color: Colors.grey,),
    ListTile(
    leading: const Icon(Icons.category_outlined,color: Colors.black87,),
    title: const Text('Categories',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 16),),
    onTap: (){
    },
    ),
    const Divider(
    thickness: 0.1,height: 1,color: Colors.grey,),
    ListTile(
    leading: const Icon(Icons.local_offer_outlined,color: Colors.black87,),
    title: const Text('offers',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 16),),
    onTap: (){
    },
    ),
    const Divider(
    thickness: 0.1,height: 1,color: Colors.grey,),
    ListTile(
    leading: const Icon(Icons.app_blocking_outlined,color: Colors.black87,),
    title: const Text('About us',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 16),),
    onTap: (){
    },
    ),
    const Divider(
    thickness: 0.1,height: 1,color: Colors.grey,),
    ListTile(
    leading: const Icon(Icons.contact_support_outlined,color: Colors.black87,),
    title: const Text('Contact us',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 16),),
    onTap: (){
    },
    ),
    const Divider(
    thickness: 0.1,height: 1,color: Colors.grey,),
    ListTile(
    leading: const Icon(Icons.share,color: Colors.black87,),
    title: const Text('Share',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 16),),
    onTap: (){
    },
    ),
    const Divider(
    thickness: 0.1,height: 1,color: Colors.grey,),
    ListTile(
    leading: const Icon(Icons.login,color: Colors.black87,),
    title:
    const Text('Signin or signup',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 16),),
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MyLogin()));
    },
    ),
    const Divider(
    thickness: 0.1,height: 1,color: Colors.grey,),
    ListTile(
    leading: const Icon(Icons.logout_sharp,color: Colors.black87,),
    title: const Text('Logout',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 16),),
    onTap: (){
    showDialog(context: context, builder:(context){
    return AlertDialog(
    title: const Text('Do you want to logout',style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,fontSize: 20),),
    actions: [
    TextButton(onPressed: (){}, child:const Text('Yes')),
    TextButton(onPressed: (){}, child: const Text('No'))
    ],

    );
    }
    );
    },
    ),
    ],
    ),
    ),
    drawerEnableOpenDragGesture: true,
    body:
    SingleChildScrollView(scrollDirection: Axis.vertical,
    child: Column(
    children: [
    SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: Padding(
    padding: const EdgeInsets.only(bottom: 13),
    child: Row(
    children: [
      CustomCarouselSlider(
        items: itemList,
        height: 330,
        subHeight: 0,
        width: MediaQuery.of(context).size.width * 1,
        autoplay: true,
      ),
    ],
    ),
    ),
    ),
    const Text("Trending Catergoies",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
    SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: Row(
    children: [
    const SizedBox(width: 12,height: 12,),
    Column(
    children: [
    GestureDetector(onTap:(){
    Navigator.push(context, MaterialPageRoute(builder:(context)=>const sweet()));
    },
    child: container(hi/3, (wi-50)/3, BoxDecoration(
    shape: BoxShape.circle,color: Colors.red[100],
    image: const DecorationImage(
    image: NetworkImage('https://assets.winni.in/product/primary/2023/7/87689.jpeg?dpr=1&w=400'),
    fit: BoxFit.cover)),),
    ),
    const Text('Sweets',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
    ],
    ),
    const SizedBox(width: 13,height: 12,),
    Column(
    children: [
    GestureDetector(onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>const icecream()));},
    child: container(hi/3, (wi-50)/3, BoxDecoration(
    shape: BoxShape.circle,color: Colors.blue[100],
    image: const DecorationImage(image: NetworkImage('https://homebodyeats.com/wp-content/uploads/2022/01/moose-tracks-ice-cream-recipe-720x720.jpg'),
    fit: BoxFit.fill)
    )),
    ),
    const Text('IceCreams',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
    ],
    ),
    const SizedBox(width: 13,height: 12,),
    Column(
    children: [
    GestureDetector(onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>const dryfruits()));},
    child: container(hi/3, (wi-50)/3, BoxDecoration(shape: BoxShape.circle,color: Colors.orange[100],
    image: const DecorationImage(image: NetworkImage('https://www.healthifyme.com/blog/wp-content/uploads/2022/01/Benefits-of-Dry-Fruits.jpeg'),
    fit: BoxFit.cover))),
    ),
    const Text('Dry Fruits',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
    ],
    ),
    const SizedBox(width: 12,height: 12,),
    ],
    ),
    ),
    SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: Row(
    children: [
    const SizedBox(width: 12,height: 12,),
    Column(
    children: [
    GestureDetector(onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const chocolates()));
    },
    child: container(hi/3, (wi-50)/3, BoxDecoration(shape: BoxShape.circle,color: Colors.red[100],
    image: const DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/types-of-chocolate-1643729614.jpg?crop=0.581xw:0.774xh;0.295xw,0&resize=640:*'),
    fit: BoxFit.cover))),
    ),
    const Text('Chocolates',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
    ),
    const SizedBox(width: 13,height: 12,),
    Column(
    children: [
    GestureDetector(onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const juices()));
    },
    child: container(hi/3, (wi-50)/3, BoxDecoration(shape: BoxShape.circle,color: Colors.blue[100],
    image: const DecorationImage(image: NetworkImage('https://www.healthkart.com/connect/wp-content/uploads/2021/07/10.-Watermelon-and-lychee-juice-768x433.jpg'),
    fit: BoxFit.cover))),
    ),
    const Text('Juices',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
    ),
    const SizedBox(width: 13,height: 12,),
    Column(
    children: [
    GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const softdrinks()));},
    child: container(hi/3, (wi-50)/3, BoxDecoration(
    shape: BoxShape.circle,color: Colors.orange[100],
    image: const DecorationImage(image: NetworkImage('https://assets.winni.in/product/primary/2022/9/73528.jpeg?dpr=1&w=400'),
    fit: BoxFit.cover))),
    ),
    const Text('Cakes',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
    ),
    const SizedBox(width: 12,height: 12,),

    ],
    ),
    ),
    const Padding(
    padding: EdgeInsets.only(top: 19,bottom: 10),
    child: Text("Gift By Occasions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
    ),
    SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: Row(
    children: [
    Column(
    children: [
    GestureDetector(onTap: (){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>const anniversary()));
    },
    child: container(hi/2.8, (wi-45)/3,BoxDecoration(borderRadius: BorderRadius.circular(20),
    color: Colors.red[100],image: const DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRutZL2TWyyyqxSXyTnR1KNhWtykZYpEMup8Q&usqp=CAU'),
    fit: BoxFit.cover
    )),),
    ),
    const Text('ANNIVERSARY',style: TextStyle(fontWeight: FontWeight.bold),),
    const Text('Celebrate The Love',style: TextStyle(fontSize: 11),)
    ],
    ),
    const SizedBox(width: 10,),
    Column(
    children: [
    GestureDetector(onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const birthday()));
    },
    child: container(hi/2.8, (wi-45)/3,BoxDecoration(borderRadius: BorderRadius.circular(20),
    color: Colors.blue[100],image: const DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLclEEA5d7ipzwdNcRwlOz_T3QA8FgRofWwQ&usqp=CAU'),
    fit: BoxFit.fill)) ),
    ),
    const Text('BIRTHDAY',style: TextStyle(fontWeight: FontWeight.bold),),
    const Text('Special Cakes',style: TextStyle(fontSize: 11),)
    ],
    ),
    const SizedBox(width: 10,),
    Column(
    children: [
    GestureDetector(onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const valentinesday_food_items()));
    },
    child: container(hi/2.8, (wi-45)/3,BoxDecoration(borderRadius: BorderRadius.circular(20),
    color: Colors.orange[100],image: const DecorationImage(image: NetworkImage('https://images.immediate.co.uk/production/volatile/sites/30/2020/08/heart-shaped-jam-tarts-76a0ba4.jpg?quality=90&webp=true&resize=600,545'),
    fit: BoxFit.fill)) ),
    ),
    const Text("VALENTINE'S DAY",style: TextStyle(fontWeight: FontWeight.bold),),
    const Text('Surprising Food Items',style: TextStyle(fontSize: 11),)
    ],
    ),
    ],
    ),
    ),
    const Padding(
    padding: EdgeInsets.only(top: 19,bottom: 6),
    child: Text("Best Burgers",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
    ),
    SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: Row(
    children: [
    const SizedBox(width: 12,height: 12,),
    Column(
    children: [
    container(hi/4, (wi-63)/4, BoxDecoration(shape: BoxShape.circle,color: Colors.red[100],
    image: const DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/turkey-burger-lead-6481ed42f294e.jpg?crop=0.669xw:1.00xh;0.115xw,0&resize=480:*'),
    fit: BoxFit.fill)
    )),
    const Text('Turkey',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
    ),
    const SizedBox(width: 13,height: 12,),
    Column(
    children: [
    container(hi/4, (wi-63)/4, BoxDecoration(shape: BoxShape.circle,color: Colors.blue[100],
    image: const DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/210324-delish-shroom-burger-v3-159-eb-1620929281.jpg?crop=1xw:1xh;center,top&resize=480:*'),
    fit: BoxFit.cover))),
    const Text('Copycat',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
    ),
    const SizedBox(width: 13,height: 12,),
    Column(
    children: [
    container(hi/4, (wi-63)/4, BoxDecoration(shape: BoxShape.circle,color: Colors.orange[100],
    image: const DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/singleimagebug-lamb-burger-1558125401.jpg?crop=1xw:0.9453781512605042xh;center,top&resize=480:*'),fit: BoxFit.cover))),
    const Text('Air Fryer',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),) ],
    ),
    const SizedBox(width: 12,height: 12,),
    Column(
    children: [
    container(hi/4, (wi-63)/4, BoxDecoration(shape: BoxShape.circle,color: Colors.red[100],
    image: const DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/smash-burgers-640277f63fb19.jpeg?crop=0.6666666666666667xw:1xh;center,top&resize=480:*'),fit: BoxFit.cover))),
    const Text('Smash Bu..',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
    ),
    const SizedBox(width: 12,height: 12,),

    ],
    ),
    ),
    SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: Row(
    children: [
    const SizedBox(width: 12,height: 12,),
    Column(
    children: [
    container(hi/4, (wi-63)/4, BoxDecoration(shape: BoxShape.circle,color: Colors.red[100],
    image: const DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/190328-falafel-burgers-327-1652134811.jpg?crop=0.383xw:1.00xh;0.438xw,0&resize=480:*'),fit: BoxFit.cover))),
    const Text('Falafel',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
    ),
    const SizedBox(width: 13,height: 12,),
    Column(
    children: [
    container(hi/4, (wi-63)/4, BoxDecoration(shape: BoxShape.circle,color: Colors.blue[100],
    image: const DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/delish-greek-salmon-burgers-1652135219.jpg?crop=0.669xw:1.00xh;0.141xw,0&resize=480:*'),fit: BoxFit.cover))),
    const Text('Salmon',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
    ),
    const SizedBox(width: 13,height: 12,),
    Column(
    children: [
    container(hi/4, (wi-63)/4, BoxDecoration(shape: BoxShape.circle,color: Colors.orange[100],
    image: const DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/slutty-vegan-burger1-1652364652.jpg?crop=0.491xw:1.00xh;0.342xw,0&resize=480:*'),fit: BoxFit.cover))),
    const Text("Slutty Veg..",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),) ],
    ),
    const SizedBox(width: 12,height: 12,),
    Column(
    children: [
    container(hi/4, (wi-63)/4, BoxDecoration(shape: BoxShape.circle,color: Colors.red[100],
    image: const DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/copycat-western-bacon-cheeseburger-2-1649170836.jpeg?crop=0.447xw:1.00xh;0.150xw,0&resize=480:*'),fit: BoxFit.cover))),
    const Text('Cheesebu..',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
    ),
    const SizedBox(width: 12,height: 12,),

    ],
    ),
    ),
    const Padding(
    padding: EdgeInsets.only(top: 19,bottom: 10),
    child: Text("Best Briyanis",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
    ),
    SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
    children: [
    container(hi/2.5, (wi-30)/2,
    BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red[100],image: const DecorationImage(image: NetworkImage('https://www.mistay.in/travel-blog/content/images/2020/07/hyderbadi-biriyani-1.jpg'),
    fit:BoxFit.cover)) ),
    const SizedBox(width: 10,),
    container(hi/2.5, (wi-30)/2,
    BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue[100],image: const DecorationImage(image: NetworkImage('https://www.mistay.in/travel-blog/content/images/2020/07/thalassery-biriyani.jpg'),
    fit:BoxFit.cover)) ),
    const SizedBox(width: 10,),
    container(hi/2.5, (wi-30)/2,
    BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange[100],image: const DecorationImage(image: NetworkImage('https://www.mistay.in/travel-blog/content/images/2020/07/sindhi-biriyani.jpg'),
    fit:BoxFit.cover)) ),
    const SizedBox(width: 10,),
    container(hi/2.5, (wi-30)/2,
    BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red[100],image: const DecorationImage(image: NetworkImage('https://www.mistay.in/travel-blog/content/images/2020/07/bombay-biriyani.jpeg'),
    fit:BoxFit.cover)) ),
    const SizedBox(width: 10,),
    container(hi/2.5, (wi-30)/2,
    BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue[100],image: const DecorationImage(image: NetworkImage('https://www.mistay.in/travel-blog/content/images/2020/07/kashmiri-biriyani.jpg'),
    fit:BoxFit.cover)) ),
    const SizedBox(width: 10,),
    container(hi/2.5, (wi-30)/2,
    BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange[100],image: const DecorationImage(image: NetworkImage('https://www.mistay.in/travel-blog/content/images/2020/07/goan-biriyani.jpg'),
    fit:BoxFit.cover)) ),
    const SizedBox(width: 10,),
    container(hi/2.5, (wi-30)/2,
    BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red[100],image: const DecorationImage(image: NetworkImage('https://www.mistay.in/travel-blog/content/images/2020/07/kampuri.jpg'),
    fit:BoxFit.cover)) ),
    const SizedBox(width: 10,),
    container(hi/2.5, (wi-30)/2,
    BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue[100],image: const DecorationImage(image: NetworkImage('https://www.mistay.in/travel-blog/content/images/2020/07/lucknow-biriyani.jpg'),
    fit:BoxFit.cover)) ),
    const SizedBox(width: 10,),
    container(hi/2.5, (wi-30)/2,
    BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange[100],image: const DecorationImage(image: NetworkImage('https://www.mistay.in/travel-blog/content/images/2020/07/kolkata-biriyani-2.jpg'),
    fit:BoxFit.cover)) ),
    ],
    ),
    ),
    ),
    const Text("Collections",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
    SingleChildScrollView(scrollDirection: Axis.horizontal,
    child: Row(
    children: [
    const SizedBox(width: 10,),
    Column(
      children: [
        container(hi/2.5, (wi-30)/2,BoxDecoration(borderRadius: BorderRadius.circular(20),
            color: Colors.red[100],image: const DecorationImage(image: NetworkImage('https://www.crazymasalafood.com/wp-content/images/dates-mawa-halwa.jpg'),fit: BoxFit.cover)) ),
        const Text('Sweet',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17))
      ],
    ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            container(hi/2.5, (wi-30)/2,BoxDecoration(borderRadius: BorderRadius.circular(20),
                color: Colors.blue[100],image: const DecorationImage(image: NetworkImage('https://www.holidify.com/images/cmsuploads/compressed/1200px-Chicken_65_28Dish29_20191120163642.jpg'),
                    fit: BoxFit.cover)) ),
            const Text("Hot",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
          ],
        ),
      ),
    ],
    ),
    ),
      const Text("Newly Launched",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const SizedBox(width: 10,),
              Column(
                children: [
                  container(hi/2.5, (wi-30),BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[100],image: const DecorationImage(
                      image: NetworkImage('https://d22r0r521qk72y.cloudfront.net/khassets/kraftadmin/articles/articleimages/recipe_images/enrolladitos-picantes-107410-580x250.jpg'),fit: BoxFit.cover)) ),
                  const Text('Spicy Chicken Lasagna Roll-Ups',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15))
                ],
              ),

            ],
          ),
        ),
      ),
      const Text("Best Pizzas",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 12,height: 12,),
            Column(
              children: [
                container(hi/3, (wi-50)/3, BoxDecoration(shape: BoxShape.circle,color: Colors.red[100],
                    image: const DecorationImage(image: NetworkImage('https://insanelygoodrecipes.com/wp-content/uploads/2023/01/Cheese-Pizza-750x563.webp'),
                        fit: BoxFit.cover))),
                const Text('Cheese Pizza',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(width: 13,height: 12,),
            Column(
              children: [
                container(hi/3, (wi-50)/3, BoxDecoration(shape: BoxShape.circle,color: Colors.blue[100],
                    image: const DecorationImage(image: NetworkImage('https://insanelygoodrecipes.com/wp-content/uploads/2023/01/Veggie_Pizza-750x563.webp'),
                        fit: BoxFit.cover))),
                const Text('Veggie Pizza',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(width: 13,height: 12,),
            Column(
              children: [
                container(hi/3, (wi-50)/3, BoxDecoration(shape: BoxShape.circle,color: Colors.orange[100],
                    image: const DecorationImage(image: NetworkImage('https://insanelygoodrecipes.com/wp-content/uploads/2023/01/BBQ_Chicken_Pizza-750x563.webp'),
                        fit: BoxFit.cover))),
                const Text('BBQ Chicken',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
              ],
            ),
            const SizedBox(width: 12,height: 12,),
          ],
        ),
      ),
      SingleChildScrollView(scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 12,height: 12,),
            Column(
              children: [
                container(hi/3, (wi-50)/3, BoxDecoration(shape: BoxShape.circle,color: Colors.red[100],
                    image: const DecorationImage(image: NetworkImage('https://insanelygoodrecipes.com/wp-content/uploads/2023/01/Pepperoni_Pizza-750x563.webp'),
                        fit: BoxFit.fitHeight))),
                const Text('Pepperoni Pizza',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
            ),
            const SizedBox(width: 13,height: 12,),
            Column(
              children: [
                container(hi/3, (wi-50)/3, BoxDecoration(shape: BoxShape.circle,color: Colors.blue[100],
                    image: const DecorationImage(image: NetworkImage('https://insanelygoodrecipes.com/wp-content/uploads/2023/01/Supreme_Pizza-750x563.webp'),
                        fit: BoxFit.cover))),
                const Text('Supreme Pizza',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
            ),
            const SizedBox(width: 13,height: 12,),
            Column(
              children: [
                container(hi/3, (wi-50)/3, BoxDecoration(shape: BoxShape.circle,color: Colors.orange[100],
                    image: const DecorationImage(image: NetworkImage('https://insanelygoodrecipes.com/wp-content/uploads/2023/01/Hawaiian_Pizza-750x563.webp'),
                        fit: BoxFit.cover))),
                const Text('Hawaiian Pizza',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
            ),
            const SizedBox(width: 12,height: 12,),

          ],
        ),
      ),
      isMobile(wi)? const Text("Mobile"):const Text('tab')
    ],
    ),
    )
    );
  }
}
