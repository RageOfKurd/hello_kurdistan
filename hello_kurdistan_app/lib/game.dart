import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  Game(this.title, this.price, this.src);

  String title;
  int price;
  String src;

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('something')),
        ),
        body: SafeArea(
            child: Center(
          child: Stack(children: [
            Column(
              children: [
                SizedBox(height: 90),
                SizedBox(
                  width: 350,
                  height: 350,
                  child: Hero(tag: 'image', child: Image.asset(this.src)),
                ),
                SizedBox(height: 20),
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '\$$price',
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Positioned(
              top: 10,
              left: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                    color: Colors.black.withOpacity(0.4),
                    child: IconButton(
                        onPressed: () => {Navigator.pop(context)},
                        icon: Icon(Icons.arrow_back, color: Colors.white))),
              ),
            ),
          ]),
        )),
      ),
    ));
  }
}
