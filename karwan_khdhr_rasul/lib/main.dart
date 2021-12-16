import 'package:flutter/material.dart';

void main() {
  runApp(KurdistanFlag());
}

class KurdistanFlag extends StatefulWidget {
  KurdistanFlag({Key? key}) : super(key: key);

  @override
  _KurdistanFlagState createState() => _KurdistanFlagState();
}

class _KurdistanFlagState extends State<KurdistanFlag> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("WeCode"),
          backgroundColor: Colors.brown[300],
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: Colors.brown[50],
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFA1887F),
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        //basicly here i added a coloumn layout widget and I bring the childeren to center
        //Rich Text idea is for multiple colors
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.brown[400],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "HELLO ",
                        style: TextStyle(color: Colors.white, fontSize: 40)),
                    TextSpan(
                      text: "KU",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                    TextSpan(
                      text: "RD",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                    TextSpan(
                      text: "ST",
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                    TextSpan(
                      text: "AN",
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(
              "https://www.arknews.net/files/%D8%B9%D9%84%D9%85%20_1.jpg",
            )
          ],
        ),
      ),
    );
  }
}
