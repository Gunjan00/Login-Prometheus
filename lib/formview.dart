import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:login_app/info.dart';
import 'package:login_app/services/user_service.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'forgetpass.dart';
import 'models/user.dart';

class FormView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormViewState();
  }
}

class FormViewState extends State<FormView> {
  final _form = GlobalKey<FormState>();
  bool showPass=true;
  String email;
  String pass;
  bool _load=false;
  int _userid;
  int _cid;
  String _token;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: true,
      body:
          Form(
            key: _form,
            child:
            Column(
                children: [
            Container(
            padding: EdgeInsets.only(left:20.0,right: 20.0),
            child: TextFormField(
                obscureText: false,
                onChanged: (value) {
                  print(value);
                  this.email = value;
                },
                validator: (value) {

                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                  if (EmailValidator.validate(value)==false) {
                    return 'Please enter valid Email Id';
                  }

                  return null;
                },
                decoration: InputDecoration(
                  //contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Work Email",
                )
            ),
          ),

        Container(
          padding: EdgeInsets.all(20.0),
          child: Stack(
              children: [
                TextFormField(
                  obscureText: showPass,
                  onChanged: (value) {
                    print(value);
                    this.pass = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    if (value.length<5) {
                      return 'Password should be min. 5 char long';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    //contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: "Password",
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(top:15.0,right: 10.0),
                  child: GestureDetector(
                    child: Image(
                        image:AssetImage('images/password.png'),
                        height: 25.0,
                        width: 25.0,
                      ),
                    onTap: (){
                        setState(() {
                          showPass=!showPass;
                        });
                    }
                  ),

                ),
              ]
          ),
        ),
      Container(
            padding: EdgeInsets.only(top:20.0),
            child: Column(
              children: [
                MaterialButton(
                minWidth:350.0,
                color: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                ),
                onPressed: () async {
                // Validate returns true if the form is valid, or false
                // otherwise.

                if (_form.currentState.validate()) {
                  Response<User> check=  await checkSignIn();
                  print(check.body.result.userId);
                  _userid = check.body.result.userId;
                  _cid= check.body.result.corporateId;
                  _token= check.body.token;
                  print(check);
                  if (check.statusCode==400){
                    displayAlert(context,"Error", "Please check your details");
                  }
                  else if (check.body.isSuccess==false){
                    displayAlert(context,"Error", "Please check your password");
                  }
                  else if (check.body.isSuccess == true){
                    displayAlert(context, "Loading..", "Please wait");
                    print("signinsuccessfull");
                    Future.delayed(const Duration(milliseconds: 700),() async{
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                      prefs.setString("username", email);
                      prefs.setString("password", pass);
                      prefs.setInt("userid", _userid);
                      prefs.setInt("cid", _cid);
                      prefs.setString("token", _token);
                      print(prefs);
                      Navigator.of(context).popUntil((route) => route.isFirst);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => InfoView(_userid,_cid,_token)));
                    });
                  }//, (Route<dynamic> route) => false );};
                }
                },
                child: Text("Sign In",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left:32.0),
                  child: GestureDetector(
                    child: Text("Forgot Password?",
                    style: TextStyle(
                        color: Colors.lightBlue
                    ),),
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => ForgetPass())),
                  ),
                )
            ]
            ),
          ),
        ],
          ),
          )
  );
  }
  Future<Response<User>> checkSignIn() async {

    final myService = UserService.create();
    final body = {"WorkEmail": this.email, "Password": this.pass};
    print(body);
    final response = await myService.postUser(body);
    // var post = response.body;
    // print(response.statusCode);
    // //print("${post.isSuccess}");
    // return post.isSuccess;
    return response;
  }

  displayAlert(context, String title, String data){
    return Alert(
      context: context,
      //type: AlertType.error,
      title: title,
      desc: data,
      buttons: [
        DialogButton(
          width: 150.0,
          child: Text(
            "Okay",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          color: Colors.lightBlue,
        ),
      ],
    ).show();
  }

}

