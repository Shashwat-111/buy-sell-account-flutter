import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          height: MediaQuery
              .of(context)
              .size
              .height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/backimage.png"), fit: BoxFit.fill
              )
          ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10, 20,0, 0),
                child: Row(
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white, size:30,),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(120, 20, 120, 0),
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
                margin: EdgeInsets.fromLTRB(50, 30, 50, 0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined, color: Colors.blue,),
                    labelText: 'Email',
                    fillColor: Colors.amber[50],
                    filled: true,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(50, 15, 50, 0),
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.red,),
                    labelText: 'Create a Password',
                    fillColor: Colors.amber[50],
                    filled: true,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(175, 20, 50, 0),
                child: RaisedButton(
                  color: Colors.amber[50],
                  child: Row(
                    children: [
                      Text("REGISTER", style: TextStyle(fontSize: 16, color: Colors.blue),),

                    ],
                  ),
                  onPressed: (){},
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
