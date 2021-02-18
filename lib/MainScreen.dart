import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List _icons = [
    //list of icons

    FontAwesomeIcons.facebookF,
    FontAwesomeIcons.telegramPlane,
    FontAwesomeIcons.youtube,
    FontAwesomeIcons.instagram,
    FontAwesomeIcons.reddit,
    FontAwesomeIcons.tiktok,
  ];
  Widget _container(){
    return Container(
      margin: EdgeInsets.only(right: 20, top: 20),
      height: 160,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),

    );
  }


  Widget _facebook(){
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Facebook",
              style: TextStyle(fontSize: 22),
            ),
            _container(),
            _container(),
            _container(),
            _container(),
            _container(),
            _container(),



            SizedBox(
              height: 20,
            )

          ],
        ),
      ),
    );
  }
  Widget _telegram(){
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Telegram",
              style: TextStyle(fontSize: 22),
            ),
            _container(),
            _container(),
            _container(),
            _container(),
            _container(),
            _container(),



            SizedBox(
              height: 20,
            )

          ],
        ),
      ),
    );
  }
  Widget _youtube(){
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Youtube",
              style: TextStyle(fontSize: 22),
            ),
            _container(),
            _container(),
            _container(),
            _container(),
            _container(),
            _container(),



            SizedBox(
              height: 20,
            )

          ],
        ),
      ),
    );
  }
  Widget _instagram(){
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Instagram",
              style: TextStyle(fontSize: 22),
            ),
            _container(),
            _container(),
            _container(),
            _container(),
            _container(),
            _container(),



            SizedBox(
              height: 20,
            )

          ],
        ),
      ),
    );
  }
  Widget _reddit(){
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Reddit",
              style: TextStyle(fontSize: 22),
            ),
            _container(),
            _container(),
            _container(),
            _container(),
            _container(),
            _container(),



            SizedBox(
              height: 20,
            )

          ],
        ),
      ),
    );
  }

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(7, 0, 7, 0),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: _selectedIndex == index
                ? Colors.blue[
                    200] //? Theme.of(context).accentColor, the colour when selected.
                : Colors
                    .white, //background Color of circle when icon is not selected.
            borderRadius: BorderRadius.circular(30),
          ),

          child:
          Icon(
            _icons[index],
            size: 30,
          )
          ),
        ),
      );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("M.Y.F.I.T",style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.grey[300],
          elevation: 0,
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu,color: Colors.black,),
          ),
        ),
          backgroundColor: Colors.grey[300],
          body: ListView(

            children: <Widget>[
              Row(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Text(
                      "Brands:",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 0.1),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: _icons
                      .asMap()
                      .entries
                      .map(
                        (MapEntry map) => _buildIcon(map.key),
                      )
                      .toList(),
                ),
              ),

              Container(
                  padding: EdgeInsets.fromLTRB(18, 10, 0, 0),
                  alignment: Alignment.topLeft,
                  child: _selectedIndex == 0
                      ? _facebook()
                      : _selectedIndex == 1
                          ? _telegram()
                          : _selectedIndex == 2
                              ? _youtube()
                              : _selectedIndex == 3
                                  ? _instagram()
                                  : _selectedIndex == 4
                                      ? _reddit()
                                      : Text(
                                          "Select a option",
                                          style: TextStyle(fontSize: 22),
                                        )),

            ],
          )),
    );
  }
}

  //Code 1 (selectable but not colored)
/*
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  List topIcons = [
    Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
        ),
        child: Icon(FontAwesomeIcons.facebookF,
          color: Colors.blue,
          size: 35,

        ),
      ),
    ),  //Facebook
    Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
        ),
        child: Icon(FontAwesomeIcons.instagram,
          color: Colors.pink,
          size: 35,
        ),
      ),
    ),  //instagram
    Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
        ),
        child: Icon(FontAwesomeIcons.youtube,
          color: Colors.red,
          size: 35,
        ),
      ),
    ),  //youtube
    Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
        ),
        child: Icon(FontAwesomeIcons.telegramPlane,
          color: Colors.blue,
          size: 35,
        ),
      ),
    ),  //Telegram
    Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
        ),
        child: Icon(FontAwesomeIcons.reddit,
          color: Colors.redAccent,
          size: 35,
        ),
      ),
    ),
  ];
  Widget _buildIcon(int index) {
    return GestureDetector(
      child: topIcons[index],
        onTap: () {
          setState(() {
            _selectedIndex = index;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.black, primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.grey[300],
          title: Text("M.Y.F.I.T", style: TextStyle(color: Colors.black),),
        ),
        drawer: Drawer(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Text("Brands: ", style: TextStyle(fontSize: 22),),
            SizedBox(
              height: 15,
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildIcon(0),
                  _buildIcon(1),
                  _buildIcon(2),
                  _buildIcon(3),
                  _buildIcon(4),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
*/  // code 2 (colored but not selectable)
