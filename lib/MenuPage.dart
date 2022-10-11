import 'package:flutter/material.dart';
import 'package:refractorgang/MyHomePage.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            {
              Navigator.pop(context);

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MyHomePage(title: toString()),
                ),
              );
            }
          },
          child: null,
        ),
      ),
    );
  }
}
