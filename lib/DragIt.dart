import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'NavigationDrawer.dart';

class DragIt extends StatefulWidget {
  const DragIt({super.key});

  @override
  State<DragIt> createState() => _DragItState();
}

class _DragItState extends State<DragIt> {
  int acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            "Corbin's Crawl",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.star),
                color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(
                        title: 'Go Back',
                      ),
                    ),
                  );
                })
          ],
          backgroundColor: Colors.white),
      body: SizedBox.expand(
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Draggable<int>(
                data: 10,
                feedback: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.deepOrange,
                  ),
                  height: 50,
                  width: 100,
                  child: const Icon(Icons.directions_run),
                ),
                childWhenDragging: Container(
                  height: 50.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.deepOrange,
                  ),
                  child: const Center(),
                ),
                child: Container(
                  height: 50.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.deepOrange,
                  ),
                  child: const Center(
                    child: Text('Crawler 1'),
                  ),
                ),
              ),
              Wrap(
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.start,
                  spacing: 20,
                  children: [
                    DragTarget<int>(
                      builder: (
                        BuildContext context,
                        List<dynamic> accepted,
                        List<dynamic> rejected,
                      ) {
                        return Container(
                          height: 50.0,
                          width: 100.0,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.deepOrange,
                          ),
                          child: Center(
                            child: Text('$acceptedData'),
                          ),
                        );
                      },
                      onAccept: (int data) {
                        setState(() {
                          acceptedData += data;
                        });
                      },
                    ),
                    DragTarget<int>(
                      builder: (
                        BuildContext context,
                        List<dynamic> accepted,
                        List<dynamic> rejected,
                      ) {
                        return Container(
                          height: 50.0,
                          width: 100.0,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.deepOrange,
                          ),
                          child: Center(
                            child: Text('$acceptedData'),
                          ),
                        );
                      },
                      onAccept: (int data) {
                        setState(() {
                          acceptedData += data;
                        });
                      },
                    ),
                  ]),
            ]),
      ),
    );
  }
}
