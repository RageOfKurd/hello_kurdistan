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
      title: 'Kurdistan App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Center(child: Text("Kurdistan"))),
          body: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 40, 10, 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                          "https://preview.redd.it/9zgkmvxau9h81.jpg?auto=webp&s=c49655b5b779a4dff0815065c475561c62ff7980",
                          width: 250),
                    ),
                  ), //
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 10, 10, 10),
                    child: const Text("Hello Kurdistan",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
