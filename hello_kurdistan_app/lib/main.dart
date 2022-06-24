// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'useless app',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(title: Center(child: Text("Kurdistan"))),
            body: ImageSlider()));
  }
}

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  String imageURL = "assets/kurdanime.jpg";
  Color color = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: (Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: CardImage(imageURL, 250, color)),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      imageURL = "assets/two.png";
                      color = Colors.deepPurple;
                    });
                  },
                  child: CardImage('assets/two.png', 100, Colors.deepPurple)),
              InkWell(
                  onTap: () {
                    setState(() {
                      imageURL = "assets/one.png";
                      color = Colors.amber;
                    });
                  },
                  child: CardImage('assets/one.png', 100, Colors.amber)),
              InkWell(
                  onTap: () {
                    setState(() {
                      imageURL = "assets/three.png";
                      color = Colors.indigo;
                    });
                  },
                  child: CardImage('assets/three.png', 100, Colors.indigo))
            ],
          ) //
        ],
      )),
    );
  }
}

class CardImage extends StatefulWidget {
  const CardImage(this.url, this.width, this.cardColor);

  final String url;
  final double width;
  final Color cardColor;

  @override
  State<CardImage> createState() => _CardImageState();
}

class _CardImageState extends State<CardImage> {
  @override
  Widget build(BuildContext context) {
    return (ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Card(
          color: widget.cardColor,
          child: Image.asset(
            widget.url,
            fit: BoxFit.cover,
            width: widget.width,
          ),
        )));
  }
}
