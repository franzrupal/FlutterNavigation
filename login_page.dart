// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'figure_A.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(255, 168, 168, 168),
            Color.fromARGB(255, 120, 120, 120),
            Color.fromARGB(255, 82, 82, 82),
            Color.fromARGB(255, 52, 52, 52),
          ],
          stops: [
            .3,
            .6,
            .8,
            .9,
            1,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Center(
          child: SafeArea(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(children: [
                SizedBox(
                  height: 45,
                ),
                Icon(
                  Icons.house,
                  size: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                //App Name
                Text(
                  'Welcome Home!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                //username
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                //password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),

                //forgot password
                Padding(
                  padding: const EdgeInsets.only(left: 220),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all(15),
                    ),
                    child: Center(
                        child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondScreen()),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                //Continue as guest
                Text(
                  'Continue as Guest',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(.5),
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),

                //sign in with
                Text('___________________ or sign in with ___________________'),

                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook,
                      size: 50,
                    ),
                    Icon(
                      Icons.apple,
                      size: 50,
                    ),
                  ],
                ),

                SizedBox(
                  height: 50,
                ),
                //dont have an account? sign up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
