import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/MainScreen.dart';
import 'package:flutter_app/login.dart';
import 'package:flutter_app/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: ListView());
  }
}

class ListView extends StatefulWidget {
  @override
  _ListViewState createState() => _ListViewState();
}

class _ListViewState extends State<ListView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backimage.png"), fit: BoxFit.fill)),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(120, 80, 120, 0),
                child: Image.asset('images/flutter.png'),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(120, 5, 120, 0),
                child: Text(
                  'M.Y.F.I.T',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 400, 0, 0),
                child: Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: RaisedButton(
                          padding: EdgeInsets.fromLTRB(29, 0, 29, 0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => Login()),
                                ));
                          },
                          child: Text('LOGIN',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black)),
                        )),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => Register()),
                              ));
                        },
                        child: Text('REGISTER',
                            style:
                                TextStyle(fontSize: 18, color: Colors.black)),
                      ),
                    )
                  ],
                ),

              ),
              Container(
                margin: EdgeInsets.fromLTRB(220, 0, 0, 0),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  },
                  child: Text("Skip", style: TextStyle(fontSize: 15, color: Colors.blue),),
                ),
              )
            ],
          )),
    ));
  }
}
