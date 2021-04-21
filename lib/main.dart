import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Text("Home"),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {},
            child: Text("About"),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {},
            child: Text("Blog"),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {},
            child: Text("Products"),
          ),
          SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {},
            child: Text("Contact"),
          ),
        ],
      )),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage('assets/background.jpg'),
            ),
          ),
          Center(
            child: Text(
              "Delight\nFoodies",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 100,
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.black,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 2 - 50,
            bottom: MediaQuery.of(context).size.height / 10,
            child: Container(
              color: Colors.black45,
              child: InkWell(
                onTap: () {},
                child: Text(
                  "View More",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width - 60,
            bottom: MediaQuery.of(context).size.height / 10,
            child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                    width: 50,
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/twitter.png'),
                    ),
                  ),
                  Container(
                    width: 50,
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/pinterest.png'),
                    ),
                  ),
                  Container(
                    width: 50,
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/instagram.png'),
                    ),
                  ),
                  Container(
                    width: 50,
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/facebook.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}