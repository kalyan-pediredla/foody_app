import 'package:Foody/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purpleAccent[100],
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                child: Padding(
              padding: const EdgeInsets.only(top: 130, left: 35),
              child: Text(
                'Welcome\nback',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            )),
            SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5,
                      right: 35,
                      left: 35),
                  child: Column(
                    children: [
                      TextField(
                        maxLength: 15,
                        decoration: InputDecoration(
                            fillColor: Color.fromARGB(255, 250, 250, 250),
                            filled: true,
                            hintText: "Email",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: CupertinoColors.white,
                            filled: true,
                            hintText: "Password",
                            labelText: 'password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(
                                fontSize: 27,
                                fontWeight: FontWeight.w700,
                                color: CupertinoColors.white),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blueAccent,
                            child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => home()));
                              },
                              icon: Icon(
                                Icons.arrow_forward,
                                color: CupertinoColors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: CupertinoColors.black,
                                    decoration: TextDecoration.underline),
                              )),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgotten Password',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: CupertinoColors.black,
                                    decoration: TextDecoration.underline),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
