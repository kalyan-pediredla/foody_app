import 'package:flutter/material.dart';

import 'home.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(leading: IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
    },icon: Icon(Icons.arrow_back_ios_new_sharp,color: Colors.red,),
      splashColor: Colors.red,highlightColor: Colors.red[100],),
      title: Text('Profile',
        style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.red[500],fontSize: 24),),
      centerTitle: true,backgroundColor: Colors.white,elevation: 0,
    ),
      body:
     Column(
       children: [
         SizedBox(height: 120,width: 120,
           child: CircleAvatar(
             backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2016/07/23/00/12/sunflower-1536088_640.jpg'),
    ),
         ),
         ListTile(title: Text('My Account'),
           trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
           leading: Icon(Icons.person,color: Colors.red,),
         ),

         ListTile(title: Text('Order history'),
           trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
           leading: Icon(Icons.history,color: Colors.red,),
         ),

         ListTile(title: Text('Payment History'),
           trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
           leading: Icon(Icons.payment_outlined,color: Colors.red,),
         ),

         ListTile(title: Text('choose Location'),
           trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
           leading: Icon(Icons.location_on,color: Colors.red,),
         ),

         ListTile(title: Text('Feedback'),
           trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
           leading: Icon(Icons.feedback_outlined,color: Colors.red,),
         ),
          ListTile(title: Text('Update'),
           trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
           leading: Icon(Icons.update,color: Colors.red,),
         ),
        ListTile(title: Text('Logout'),
           trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,),
           leading: Icon(Icons.logout_sharp,color: Colors.red,),
         ),


       ],
     )
    );
  }
}
