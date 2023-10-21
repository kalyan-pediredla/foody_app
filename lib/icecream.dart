import 'package:Foody/icecream1.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class icecream extends StatefulWidget {
  const icecream({super.key});

  @override
  State<icecream> createState() => _icecreamState();
}

class _icecreamState extends State<icecream> {
  List<Contacts> li = <Contacts>[
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/soft-serve.webp",
        name: 'Soft Serve',
        price: 99,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/gelato-ice-cream.webp",
        name: 'Gelato',
        price: 99,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/sorbet-sweet.webp",
        name: 'Sorbet',
        price: 59,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/sherbet-cream-550x413.webp",
        name: 'Sherbet',
        price: 29,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/rolled-ice-cream-550x413.webp",
        name: 'Rolled',
        price: 99,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/ice-popsicle-550x413.webp",
        name: 'Popsicle',
        price: 49,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/shaved-ice-550x413.webp",
        name: 'Shaved Ice',
        price: 39,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/frozen-yogurt-550x413.webp",
        name: 'Yogurt',
        price: 99,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/kulfi-indian-sweet-550x413.webp",
        name: 'Kulfi',
        price: 49,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/falooda-cold-550x413.webp",
        name: 'Faloodeh',
        price: 99,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/dondurma-ice-cream-550x413.webp",
        name: 'Dondurma',
        price: 69,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/mochi-ice-cream-550x413.webp",
        name: 'Mochi',
        price: 89,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/granita-frozen-550x413.webp",
        name: 'Granita',
        price: 49,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/neapolitan-ice-cream-1-550x413.webp",
        name: 'Neapolitan',
        price: 79,
        screen: const soft()),
    Contacts(
        imgPath:
            "https://www.lacademie.com/wp-content/uploads/2022/02/booza-ice-cream-550x413.webp",
        name: 'Booza',
        price: 79,
        screen: const soft()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const home()));
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.red,
          ),
          splashColor: Colors.red,
          highlightColor: Colors.red[100],
        ),
        title: Text(
          'Ice Creams',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red[500],
              fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: li.length,
          itemBuilder: (BuildContext context, i) {
            return GestureDetector(
               onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => li[i].screen));
                          },
              child: Container(
                height: 150,
                color: const Color.fromARGB(255, 254, 253, 254),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            height: 130,
                            width: 130,
                            image: NetworkImage(li[i].imgPath),
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          li[i].name,
                          style: const TextStyle(
                              fontSize: 19, fontWeight: FontWeight.normal),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Center(
                              child: Text(
                            '₹${li[i].price}.00',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 19),
                          )),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Container(
                            height: 40,
                            width: 80,decoration: BoxDecoration
                            (borderRadius: BorderRadius.circular(8),
                            color: const Color.fromARGB(228, 253, 76, 99),),
                            
                            child: const Center(child: Text('Add Item',style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class Contacts {
  final String imgPath;
  final String name;
  final int price;
  final Widget screen;
  Contacts(
      {required this.imgPath,
      required this.name,
      required this.price,
      required this.screen});
}
