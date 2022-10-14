import 'package:flutter/material.dart';
import 'package:refractorgang/DragIt.dart';
import 'package:refractorgang/HorizontalList.dart';
import 'package:refractorgang/HorizontalList2.dart';
import 'package:refractorgang/NavigationDrawer.dart';
import 'package:refractorgang/ReusableCard.dart';
import 'Kilroys.dart';
import 'ProfilePage.dart';
import 'QRCodePage.dart';
import 'TipModel.dart';
import 'appBarVar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bar Crawl'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.access_alarm),
              onPressed: () {
                Navigator.pop(context);

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TipModel(),
                  ),
                );
              })
        ],
        backgroundColor: Colors.grey[900],
      ),
      drawer: const NavigationDrawer(),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32.0, 10, 32, 2),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Flexible(
                flex: 2,
                child: Row(
                  children: const <Widget>[
                    Expanded(
                      child: HorizontalList1(
                        gangshit: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Flexible(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                      child: ReuseableCard(
                        colour: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Flexible(
                flex: 3,
                child: Row(
                  children: const [
                    Expanded(
                      child: HorizontalList2(
                        gangshit: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[800],
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.restaurant,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const QRCodePage(),
                    ),
                  );
                },
                child: const Icon(
                  Icons.qr_code,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
                child: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 30.0,
          child: Icon(
            Icons.local_drink,
            color: Colors.grey[800],
          ),
          onPressed: () {
            Navigator.pop(context);

            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const DragIt(),
              ),
            );
          }),
    );
  }
}
