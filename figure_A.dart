// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'figure_B.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
          'First Page',
        )),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: const Color.fromARGB(255, 199, 199, 199),
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    color: Color.fromARGB(255, 150, 150, 150),
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    color: const Color.fromARGB(255, 199, 199, 199),
                    height: 100,
                    width: 100,
                  ),
                ],
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
                    'Go to second page',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
