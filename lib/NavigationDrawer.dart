import 'package:flutter/material.dart';
import 'package:refractorgang/BishopBar.dart';
import 'package:refractorgang/Kilroys.dart';
import 'package:refractorgang/MenuPage.dart';
import 'package:refractorgang/MyHomePage.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 52, 57, 61),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.grey,
                    Color.fromARGB(255, 52, 57, 61),
                  ]),
            ),
            child: CircleAvatar(
              radius: 52,
              backgroundImage: AssetImage(
                  '/Users/nickcamson/refractorgang/lib/assets/CorbinChi.jpeg'),
            ),
          ),
          ListTile(
            title: const Text(
              'Home',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MyHomePage(
                    title: '',
                  ),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Favorites',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const KilorysPage(),
                ),
              );
            },
          ),
          const Divider(
            color: Colors.grey,
            endIndent: 20,
            height: 20,
            thickness: 2,
          ),
          ListTile(
            title: const Text(
              'Upstairs Pub',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const KilorysPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              "Kilroy's Bar",
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const KilorysPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Alley Bar',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const KilorysPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'The Irish Lion',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const KilorysPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Bishop Bar',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BishopBar(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Happy Wobbles',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const KilorysPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Village Pub',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const KilorysPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'Brothers',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              'Atlas Ballroom',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const KilorysPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text(
              'C3 Bar',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const KilorysPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
