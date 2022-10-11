import 'package:flutter/material.dart';
import 'package:refractorgang/Kilroys.dart';
import 'package:refractorgang/MenuPage.dart';

class ReuseableCard extends StatelessWidget {
  final colour;

  ReuseableCard({super.key, required this.colour});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);

        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const KilorysPage(),
          ),
        );
      },
      child: Stack(children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(
                    '/Users/nickcamson/refractorgang/lib/assets/Kilroy.jpg'),
                fit: BoxFit.cover),
            color: colour,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        const Center(
          heightFactor: 3,
          child: Text(
            'Bar of the Week',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 20),
          ),
        )
      ]),
    );
  }
}
