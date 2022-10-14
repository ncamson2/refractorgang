import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:refractorgang/MyHomePage.dart';
import 'DragIt.dart';
import 'NavigationDrawer.dart';
import 'TipModel.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bar Krawl',
            style: TextStyle(fontStyle: FontStyle.italic)),
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
      body: SafeArea(
        child: Column(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "/Users/nickcamson/refractorgang/lib/assets/ChiSky.jpeg"),
                    fit: BoxFit.cover)),
            child: Container(
              width: double.infinity,
              height: 200,
              child: Container(
                alignment: Alignment(0.0, 2.5),
                child: const CircleAvatar(
                  radius: 62,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                        "/Users/nickcamson/refractorgang/lib/assets/CorbinChi.jpeg"),
                    radius: 60.0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Nick Camson",
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Chicago",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Bar Crawl LLC",
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TipModel(),
                ),
              );
            },
            child: const Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              elevation: 2.0,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                child: Text(
                  "🍺",
                  style: TextStyle(
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w300,
                      fontSize: 25),
                ),
              ),
            ),
          ),
          const Divider(
            height: 15,
            color: Colors.white,
            endIndent: 10,
            indent: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "/Users/nickcamson/refractorgang/lib/assets/KrawlLogo.png"),
                          fit: BoxFit.cover)),
                  height: 150,
                  width: double.infinity,
                ),
              )
            ],
          ),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[800],
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(
                        title: '',
                      ),
                    ),
                  );
                },
                child: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.restaurant,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.qr_code,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
            ),
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
