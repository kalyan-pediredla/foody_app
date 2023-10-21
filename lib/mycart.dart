import 'package:flutter/material.dart';

class mycart extends StatefulWidget {
  const mycart({super.key});

  @override
  State<mycart> createState() => _mycartState();
}

class _mycartState extends State<mycart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('mycart'),
      ),
    );
  }
}
