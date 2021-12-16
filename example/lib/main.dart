import 'package:flutter/material.dart';
import 'package:giff_dialog/giff_dialog.dart';

void main() => runApp(const MyApp());

const List<Key> keys = [
  Key("Network"),
  Key("NetworkDialog"),
  Key("Flare"),
  Key("FlareDialog"),
  Key("Asset"),
  Key("AssetDialog"),
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Giff Dialog Demo',
      theme: ThemeData(primarySwatch: Colors.teal, fontFamily: 'Nunito'),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Giff Dialog Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              key: keys[0],
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.teal),
              ),
              child: const Text(
                "Network Giff",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => NetworkGiffDialog(
                    key: keys[1],
                    image: Image.network(
                      "https://raw.githubusercontent.com/Shashank02051997/FancyGifDialog-Android/master/GIF's/gif14.gif",
                      fit: BoxFit.cover,
                    ),
                    entryAnimation: EntryAnimation.topLeft,
                    title: const Text(
                      'Granny Eating Chocolate',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
                    ),
                    description: const Text(
                      'This is a granny eating chocolate dialog box. This library helps you easily create fancy giff dialog.',
                      textAlign: TextAlign.center,
                    ),
                    onOkButtonPressed: () {},
                  ),
                );
              },
            ),
            ElevatedButton(
              key: keys[2],
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.teal),
              ),
              child: const Text('Flare Giff', style: TextStyle(color: Colors.white)),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => FlareGiffDialog(
                    key: keys[3],
                    flarePath: 'assets/example.flr',
                    flareAnimation: 'loading',
                    title: const Text(
                      'Space Reloading',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
                    ),
                    entryAnimation: EntryAnimation.normal,
                    description: const Text(
                      'This is a space reloading dialog box. This library helps you easily create fancy flare dialog.',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                    onOkButtonPressed: () {},
                  ),
                );
              },
            ),
            ElevatedButton(
              key: keys[4],
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.teal),
              ),
              child: const Text(
                'Asset Giff',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AssetGiffDialog(
                    key: keys[5],
                    image: Image.asset(
                      'assets/example.gif',
                      fit: BoxFit.cover,
                    ),
                    title: const Text(
                      'Men Wearing Jackets',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
                    ),
                    entryAnimation: EntryAnimation.bottomRight,
                    description: const Text(
                      'This is a men wearing jackets dialog box. This library helps you easily create fancy giff dialog.',
                      textAlign: TextAlign.center,
                      style: TextStyle(),
                    ),
                    onOkButtonPressed: () {},
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
