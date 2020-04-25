import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My CV App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("My CV App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                elevation: 2.0,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 30.0,
                  ),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            "assets/images/Madhav_Paudel_photo_square.jpg"),
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
                          fontFamily: "NotoSans",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text(
                  "Social Links",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Card(
                elevation: 2.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          launch("https://facebook.com/poudelmadhav143");
                        },
                        color: Colors.blue,
                        icon: FaIcon(FontAwesomeIcons.facebook),
                      ),
                      IconButton(
                        onPressed: () {
                          launch("https://twitter.com/poudelmadhav143");
                        },
                        color: Colors.lightBlueAccent,
                        icon: FaIcon(FontAwesomeIcons.twitter),
                      ),
                      IconButton(
                        onPressed: () {
                          launch("https://github.com/poudelmadhav");
                        },
                        color: Colors.black,
                        icon: FaIcon(FontAwesomeIcons.github),
                      ),
                      IconButton(
                        onPressed: () {
                          launch("https://instagram.com/poudelmadhav143");
                        },
                        color: Colors.pink,
                        icon: FaIcon(FontAwesomeIcons.instagram),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                  top: 10.0,
                  bottom: 3.0,
                ),
                child: Text(
                  "Skills",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://fenzodigital.com/wp-content/uploads/2018/08/Mobile-App.png",
                    ),
                  ),
                  title: Text("App Development"),
                  subtitle: Text("Dart and Flutter"),
                ),
              ),
              Card(
                elevation: 2.0,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://codeit.com.np/storage/2019/11/web-300x158.jpg",
                    ),
                  ),
                  title: Text("Web Development"),
                  subtitle:
                      Text("Ruby, Ruby on Rails, HTML, CSS, and JavaScript"),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
