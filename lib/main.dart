import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My CV App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My CV App"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 30.0,
                ),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/Madhav_Paudel_photo_square.jpg"),
                      radius: 60.0,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Madhav Paudel",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      "Software Engineer",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      "Hello, I am Software Engineer at Namesace Inc. I spefically work of web development. But are is not limited. Sometimes I work on AWS. And sometimes I work on frontend using React too. I have worked on many projects using gulp.",
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
