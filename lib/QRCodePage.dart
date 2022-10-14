import 'package:flutter/material.dart';
import 'TipModel.dart';

class QRCodePage extends StatefulWidget {
  const QRCodePage({super.key});

  @override
  State<QRCodePage> createState() => _QRCodePageState();
}

class _QRCodePageState extends State<QRCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bar Krawl',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
        ),
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
