import 'package:flutter/material.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

import 'models/hero_model.dart';

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
  final List<HeroModel> heros = [
    HeroModel("JETT", "images/jett_valo.gif"),
    HeroModel("KILLJOY", "images/killjoy_valo.gif"),
    HeroModel("SAGE", "images/sage_valo.gif"),
    HeroModel("SOVA", "images/sova_valo.gif"),
    HeroModel("VIPER", "images/viper_valo.gif"),
    HeroModel("RAZE", "images/raze_valo.gif"),
    HeroModel("YORU", "images/yoru_valo.gif"),
    HeroModel("BREACH", "images/breach_valo.gif"),
    HeroModel("ASTRA", "images/astra_valo.gif"),
    HeroModel("CYPHER", "images/cypher_valo.gif"),
    HeroModel("OMEN", "images/omen_valo.gif"),
    HeroModel("PHOENIX", "images/phoenix_valo.gif"),
    HeroModel("SKYE", "images/skye_valo.gif"),
  ];

  //final List<Widget> images2 =

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
    Hero(
      tag: "ASTRA",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "images/astra_valo.gif",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
      tag: "CYPHER",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "images/cypher_valo.gif",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
      tag: "OMEN",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "images/omen_valo.gif",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
      tag: "PHOENIX",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "images/phoenix_valo.gif",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
      tag: "SKYE",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "images/skye_valo.gif",
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
          titles: [for (var hero in heros) hero.title],
          images: [
            for (var hero in heros)
              Hero(
                tag: hero.title,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    hero.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ],
          textStyle:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          initialPage: 2,
          align: ALIGN.CENTER,
        ))
      ],
    )));
  }
}
