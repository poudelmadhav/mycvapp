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
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      // backgroundColor: Colors.green,
                      radius: 60.0,
                    ),
                    Text("Madhav Paudel"),
                    Text("Software Engineer"),
                    Text("Hello, I am Software Engineer at Namesace Inc. I spefically work of web development. But are is not limited. Sometimes I work on AWS. And sometimes I work on frontend using React too. I have worked on many projects using gulp."),
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
