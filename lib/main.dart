import 'dart:convert';
//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:login_app/models/user.dart';
import 'package:login_app/services/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'formview.dart';
import 'package:invert_colors/invert_colors.dart';
import 'package:login_app/forgetpass.dart';

import 'info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _navKey = GlobalKey<NavigatorState>();
  String _username = "";
  String _password="";
  Future<bool> login;
  _loadUserInfo(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _username = (prefs.getString('username') ?? "");
    _password = (prefs.getString('password') ?? "");
    print("${_username}, ${_password}");
    if (_username == "") {
      _navKey.currentState.pushReplacement(MaterialPageRoute(builder: (context) => Login()));
    }
    else if (_password==""){
      //return false;
      _navKey.currentState.pushReplacement(MaterialPageRoute(builder: (context) => Login()));
      //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Login()));
    }
    else{
      //return true;
      _navKey.currentState.pushReplacement(MaterialPageRoute(builder: (context) => Login()));
      //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => InfoView(_username,_password)));
    }
  }

  @override
  Widget build(BuildContext context) {
    _loadUserInfo(context);

    return MaterialApp(
      navigatorKey: _navKey,
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      title: 'Login Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      home:
      //_loadUserInfo(context),
      Center(child: CircularProgressIndicator()),
     //Login(),
    );
  }
}

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.only(left:100.0,top:50.0),
              child: Row(
              children: [
                InvertColors(
                  child: Image(
                  image:AssetImage('images/logo.png'),
                  height: 50.0,
                  width: 50.0,
              ),
                ),
                Container(width: 5.0,),
                Text(
                    'PROMETHEUS',
                    style: TextStyle(fontSize: 48.0,fontWeight: FontWeight.w300)),
                    //style: Theme.of(context).textTheme.headline3,),
              ],
              ),),
              Container(
                padding: EdgeInsets.only(left:20.0),
                child: Column(
                  children: [
                    Align(alignment: Alignment.topLeft, child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.left,)),
                    Container(height: 20.0),
                    Align(alignment: Alignment.topLeft,child: Text("Lets show some development skills!!",style: TextStyle(fontSize: 14.0))),
                  ],
                ),
              ),
          SizedBox(
              width:500.0 ,
              height: 270.0,
              child: FormView()),
        ],
        )
    )
    )
    );
  }
}