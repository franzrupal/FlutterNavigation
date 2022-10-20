// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'figure_C.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          'Second Page',
        )),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                color: const Color.fromARGB(255, 199, 199, 199),
                height: 140,
                width: 350,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: Color.fromARGB(255, 150, 150, 150),
                height: 140,
                width: 350,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: Color.fromARGB(255, 150, 150, 150),
                height: 140,
                width: 350,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                color: const Color.fromARGB(255, 199, 199, 199),
                height: 140,
                width: 350,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 194, 194, 194)),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(20)),
                  ),
                  child: const Text(
                    'Go to last page',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FourthScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
