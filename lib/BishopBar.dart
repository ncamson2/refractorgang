import 'package:flutter/material.dart';
import 'MenuPage.dart';
import 'NavigationDrawer.dart';
import 'TipModel.dart';

class BishopBar extends StatefulWidget {
  const BishopBar({super.key});

  @override
  State<BishopBar> createState() => _BishopBarState();
}

class _BishopBarState extends State<BishopBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: const NavigationDrawer(),
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            title: const Text(
              "Bishop's Bar",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.access_alarm),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const MenuPage(),
                      ),
                    );
                  })
            ],
            backgroundColor: Colors.white),
        body: Center(
          child: GridView.builder(
              padding: const EdgeInsets.all(50 / 2.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 15,
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 3),
              itemCount: 42,
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Menu Item $index',
                    ),
                  ),
                );
              }),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add',
            ),
          ],
          selectedItemColor: Colors.black,
        ),
      );
}
