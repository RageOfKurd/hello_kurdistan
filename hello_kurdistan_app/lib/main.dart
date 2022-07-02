// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hello_kurdistan_app/game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'something',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Center(child: Text("something"))),
            body: SafeArea(child: GameSlider())));
  }
}

class GameSlider extends StatefulWidget {
  const GameSlider({Key? key}) : super(key: key);

  @override
  State<GameSlider> createState() => _GameSliderState();
}

class _GameSliderState extends State<GameSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: (ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(height: 60),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Game('God Of War', 55, 'assets/one.jpg');
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                  child: Stack(children: [
                    Container(
                      height: 400,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Hero(
                            tag: 'image',
                            child: Image.asset('assets/one.jpg'))),
                    Positioned(
                      bottom: 25,
                      left: 95,
                      child: Container(
                        child: Center(
                            child: Text(
                          '55\$',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        )),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 32, 145, 45)),
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(height: 60),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Game('Assassin', 70, 'assets/two.jpg');
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                  child: Stack(children: [
                    Container(
                      height: 400,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Hero(
                            tag: 'image',
                            child: Image.asset('assets/two.jpg'))),
                    Positioned(
                      bottom: 25,
                      left: 95,
                      child: Container(
                        child: Center(
                            child: Text(
                          '70\$',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        )),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 32, 145, 45)),
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(height: 60),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Game('Battlefield', 55, 'assets/three.jpg');
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                  child: Stack(children: [
                    Container(
                      height: 400,
                    ),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Hero(
                            tag: 'image',
                            child: Image.asset('assets/three.jpg'))),
                    Positioned(
                      bottom: 60,
                      left: 95,
                      child: Container(
                        child: Center(
                            child: Text(
                          '55\$',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        )),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromARGB(255, 32, 145, 45)),
                      ),
                    ),
                  ]),
                ),
              ),
              SizedBox(height: 60),
            ],
          )),
        ),
      ),
    );
  }
}
