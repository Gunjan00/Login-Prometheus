import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:invert_colors/invert_colors.dart';

import 'models/user.dart';
import 'package:chopper/chopper.dart';
import 'package:login_app/services/user_service.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'dart:convert';

class ForgetPass extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  String email;
  String pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //resizeToAvoidBottomPadding: true,
        body:SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Flexible(
                flex:2,
                child: Container(
                padding: EdgeInsets.only(left:100.0,top:120.0),
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
                'PAXES',
                style: TextStyle(fontSize: 48.0,fontWeight: FontWeight.w300)),
                //style: Theme.of(context).textTheme.headline3,),
                ],
                ),),
              ),
              Flexible(
                flex:1,
                child: Container(
                padding: EdgeInsets.only(left:20.0),
                child: Column(
                children: [
                  Container(height:50.0),
                  Align(alignment: Alignment.topLeft, child: Text("Forget Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0),textAlign: TextAlign.left,)),
                //Container(height: 20.0),
                //Align(alignment: Alignment.topLeft,child: Text("Lets start with business travel",style: TextStyle(fontSize: 14.0))),
                ],
                ),
                ),
              ),
        Flexible(
          flex:2,
          child: Form(
            key: _form,
            child:
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
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
                        if (EmailValidator.validate(value) == false) {
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
                  padding: EdgeInsets.only(top: 20.0),
                  child: Column(
                      children: [
                        Container(height: 30.0,),
                        MaterialButton(
                          minWidth: 350.0,
                          color: Colors.lightBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                           onPressed: () async {
                            // Validate returns true if the form is valid, or false
                            // otherwise.

                            if (_form.currentState.validate()) {
                              Response<User> check=  await generateResetLink();
                              print(check);
                          //     if (check.statusCode==400){
                          //       displayAlert(context, "Please check your details");
                          //     }
                          //     else
                              if (check.body.isSuccess==false){
                                // print(check.body.errors.toString());
                                // Map<String, dynamic> res = jsonDecode(check.body.errors.toString());
                                // print(res['UserMessage'].toString());

                                displayAlert(context,"Oops..", "Something went wrong, please try again later");
                              }
                               else if (check.body.isSuccess == true){
                          //       print("signinsuccessfull");
                                displayAlert(context,"Success", "Password Reset Link has been sent to yor registered Email ID");
                          //       SharedPreferences prefs = await SharedPreferences.getInstance();
                          //       prefs.setString("username", email);
                          //       print(prefs);
                          //       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => InfoView(email,pass)));};//, (Route<dynamic> route) => false );};
                             }
                          }},
                          child: Text("Get your Password",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
              ],
            ),
          ),
        )
    ]
    )
    )));
  }

  Future<Response<User>> generateResetLink() async {

    final myService = UserService.create();
    final body = {"WorkEmail": this.email};
    print(body);
    final response = await myService.getPassword(body);
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