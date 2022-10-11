import 'package:flutter/material.dart';
import 'package:refractorgang/MenuPage.dart';
import 'package:refractorgang/UpStairsPub.dart';

class HorizontalList2 extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final gangshit;
  const HorizontalList2({super.key, required this.gangshit});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      height: 400.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 135.0,
                height: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                          '/Users/nickcamson/refractorgang/lib/assets/BeerThing.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const UpStairsPub(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 135.0,
                height: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                          '/Users/nickcamson/refractorgang/lib/assets/burgerRefractor.jpeg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const UpStairsPub(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 135.0,
                height: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                          '/Users/nickcamson/refractorgang/lib/assets/BeerThing.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const UpStairsPub(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 135.0,
                height: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage(
                          '/Users/nickcamson/refractorgang/lib/assets/burgerRefractor.jpeg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const UpStairsPub(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
