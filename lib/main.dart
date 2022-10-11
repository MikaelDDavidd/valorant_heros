import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> titles = [
    "JETT",
    "KILLJOY",
    "SAGE",
    "SOVA",
    "VIPER",
    "RAZE",
    "YORU",
    "BREACH",
  ];

  final List<Widget> images = [
    Hero(
      tag: "JETT",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "images/jett_valo.gif",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
      tag: "KILLJOY",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "images/killjoy_valo.gif",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
      tag: "SAGE",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "images/sage_valo.gif",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
      tag: "SOVA",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "images/sova_valo.gif",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
      tag: "VIPER",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "images/viper_valo.gif",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
      tag: "RAZE",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "images/raze_valo.gif",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
      tag: "YORU",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "images/yoru_valo.gif",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
      tag: "BREACH",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "images/breach_valo.gif",
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 70,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Center(
              child: Image.asset(
                "images/logo.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
            child: VerticalCardPager(
          titles: titles,
          images: images,
          textStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          initialPage: 2,
          align: ALIGN.CENTER,
        ))
      ],
    )));
  }
}
