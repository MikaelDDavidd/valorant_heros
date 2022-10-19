import 'package:flutter/material.dart';
import 'package:valorant_heros/models/hero_model.dart';
import 'package:valorant_heros/services/hero_services.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final List<HeroModel> heros = HeroService().heros;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Center(
                  child: Image.asset(
                    "images/jett-banner.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Expanded(
                child: Center(
              child: Text('hello wourld',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ))
          ],
        )));
  }
}
