import 'package:flutter/material.dart';
import 'package:valorant_heros/screens/detail_screen.dart';
import 'package:valorant_heros/services/hero_services.dart';
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
      home: const DetailScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<HeroModel> heros = HeroService().heros;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
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
              titles: [for (var hero in heros) hero.name],
              images: [
                for (var hero in heros)
                  Hero(
                    tag: hero.name,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        hero.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
              textStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              initialPage: 2,
              align: ALIGN.CENTER,
            ))
          ],
        )));
  }
}
