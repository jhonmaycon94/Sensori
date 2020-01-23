import 'package:flutter/material.dart';
import 'package:sensori/pages/gamePage.dart';
import 'package:sensori/pages/trophyRoomPage.dart';

class GamesPage extends StatelessWidget {
  GamesPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          leading: new IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menun',
            onPressed: null,
          ),
          title: new Text(
            'Games',
            style: Theme.of(context).textTheme.title,
          ),
          actions: <Widget>[
            new IconButton(
              icon: Icon(Icons.account_circle),
              tooltip: 'Trophy Room',
              onPressed: () => {
                Navigator.push(context, 
                MaterialPageRoute(
                  builder: (context) => TrophyRoomPage(title: "Trophy")
                ))
              },
            )
          ]),
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/starry-background.jpg",
                    ),
                    fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: new Container(
              color: Colors.yellow,
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width,
                maxHeight: 200.0,
              ),
              child: new Text(
                "Pick the subject!",
                style: TextStyle(
                    shadows: [
                      Shadow(
                          blurRadius: 2.0,
                          color: Colors.purple,
                          offset: Offset(3.0, 3.0)),
                    ],
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: "SeymourOne"),
              ),
            ),
          ),
          new Center(
            child: new Stack(children: <Widget>[
              new Container(
                width: 400.0,
                height: 400.0,
                decoration: new BoxDecoration(),
              ),
              new Positioned(
                child: Column(
                  children: <Widget>[
                    new FloatingActionButton(
                      child: Image.asset("assets/images/planet1.png"),
                      elevation: 0,
                      onPressed: () => {},
                    ),
                    new Text(
                      "Arts",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 20.0,
                left: 100.0,
              ),
              new Positioned(
                child: Column(
                  children: <Widget>[
                    new FloatingActionButton(
                      child: Image.asset("assets/images/planet2.png"),
                      elevation: 0,
                      onPressed: () => {},
                    ),
                    new Text(
                      "science",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 160.0,
                left: 10.0,
              ),
              new Positioned(
                child: new Column(
                  children: <Widget>[
                    new FloatingActionButton(
                      child: Image.asset("assets/images/planet3.png"),
                      elevation: 0,
                      onPressed: () => {},
                    ),
                    new Text(
                      "English",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 160.0,
                right: 10.0,
              ),
              new Positioned(
                child: new Column(
                  children: <Widget>[
                    new FloatingActionButton(
                      child: Image.asset("assets/images/planet4.png"),
                      elevation: 0,
                      onPressed: () => {},
                    ),
                    new Text(
                      "Portuguese",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 325.0,
                left: 230.0,
              ),
              new Positioned(
                child: new Column(
                  children: <Widget>[
                    new FloatingActionButton(
                      child: Image.asset("assets/images/planet5.png"),
                      elevation: 0,
                      onPressed: () => {},
                    ),
                    new Text(
                      "Geo",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 30.0,
                left: 250.0,
              ),
              new Positioned(
                child: new Column(
                  children: <Widget>[
                    new FloatingActionButton(
                      child: Image.asset("assets/images/moon.png"),
                      elevation: 0,
                      onPressed: () => {},
                    ),
                    new Text(
                      "History",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 310.0,
                left: 80.0,
              ),
              new Positioned(
                child: new Column(
                  children: <Widget>[
                    new Container(
                      width: 140.0,
                      height: 140.0,
                      child: new RawMaterialButton(
                        child: Image.asset("assets/images/sun.png"),
                        shape: new CircleBorder(),
                        elevation: 0,
                        onPressed: () => {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => UnityDemoScreen())
                              )
                        },
                      ),
                    ),
                    new Text(
                      "Math",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                top: 130.0,
                left: 130.0,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
