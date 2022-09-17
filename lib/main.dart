import 'package:flutter/material.dart';
import 'package:satt/mycomponent.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List laptoptitle = ["dell", "toshiba", "hp", "sony"];
  List laptopsubtitle = ["G13359", "T-7741", "H6698", "sv885"];
  List<Color> textColor = [
    Colors.amber,
    Colors.green,
    Colors.pink,
    Colors.blue
  ];
  List<Image> myimages = [
    Image(
      image: AssetImage("my_pictures/1.webp"),
    ),
    Image(
      image: AssetImage("my_pictures/2.jfif"),
    ),
    Image(
      image: AssetImage("my_pictures/3.jfif"),
    ),
    Image(
      image: AssetImage("my_pictures/4.jfif"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: laptoptitle.length,
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            trailing: Icon(Icons.laptop),
            leading: myimages[i],
            subtitle: Text(
              "${laptopsubtitle[i]}",
              style: TextStyle(fontSize: 25),
            ),
            title: Text(
              "${laptoptitle[i]}",
              style: TextStyle(fontSize: 30, color: textColor[i]),
            ),
          );
        },
      ),
    ));
  }
}
