import 'package:flutter/material.dart';
import 'TipModel.dart';

class AppBarVar extends StatelessWidget {
  var appBar1;

  AppBarVar({super.key, required this.appBar1});

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
    );
  }
}



// Im gonna dead this file for now, but essentially i'm trying
// to implement an appBar as a variable to keep my code DRY
// ... (Don't repeat yourself)