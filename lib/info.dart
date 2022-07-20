import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/services/user_service.dart';
import 'package:login_app/services/userdetails_service.dart';

import 'database/database.dart';
import 'models/user.dart';
import 'models/userdetails.dart';


class InfoView extends StatelessWidget {
  DatabaseHelper helper = DatabaseHelper();
  Future<UserDetails> userData;
  //User user;
  final int _userid;
  final int _cid;
  final String _token;

  InfoView(this._userid,this._cid, this._token);

  //Future<UserDetails>
   void getUserDetails() async {

    final myService = UserDetailsService.create();
    final body = {
      "UserId": this._userid,
      "CorporateId": this._cid,
      "Token": this._token
    };
    final response = await myService.getUserDetails(body);
    print(response);
    print(response.body);
    var post = UserDetails.fromJson(response.body);
    print("title: ${post.isSuccess}");

    int result;
    result= await helper.insertNote(_userid, json.encode(response.body));
    print(result);

    List<Map<String,dynamic>> res;
    res= await helper.getNoteMapList();
    print("RES   $res");
    Map<String,dynamic> resultData = json.decode(res[0]["userDetails"]);
    UserDetails currUser= UserDetails.fromJson(resultData);
    print("Current--> ${currUser.result.user.firstName}");


    int count;
    count= await helper.getCount();
    print("Count--> $count");

    // int r;
    // for(int i=0; i<3; i++) {
    //   r = await helper.deleteNote(_userid);
    //   print(r);
    // }

    // List<Map<String,dynamic>> res1;
    // res1= await helper.getNoteMapList();
    // print("Final---> $res1);


    //UserDetails data = response.body;
    //print("INFOVIEW--${data.isSuccess}");
    //return data;
  }

  // void _save() async {
  //
  //   int result;
  //
  //     result = await helper.insertNote(_userid, );
  //
  //   if (result != 0) {  // Success
  //     _showAlertDialog('Status', 'Note Saved Successfully');
  //   } else {  // Failure
  //     _showAlertDialog('Status', 'Problem Saving Note');
  //   }
  //
  // }

  @override
  Widget build(BuildContext context) {
    //userData =
        getUserDetails();
    return Scaffold(
      appBar: AppBar(title: Text("Welcome"),
    ),
    );

    //   Container(color: Colors.white ,child:FutureBuilder(
    //     future: userData,
    //     builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
    //       Widget child;
    //       if (snapshot.hasData) {
    //         print("data loaded");
    //         if (snapshot.data.result==null){
    //           child= Container(
    //             //width: 30,
    //             //height: 30,
    //             child: Text("Error!",
    //             style: TextStyle(fontSize: 40.0, color: Colors.black),),
    //           );
    //         }
    //         else {
    //           child = Scaffold(
    //               appBar: AppBar(title:
    //               Text('Hello ${snapshot.data.result.firstName} ${snapshot.data
    //                   .result.lastName}',
    //                 style: TextStyle(color: Colors.black),),
    //               ));
    //         }
    //       }
    //       else{
    //         print("Data loading");
    //         child =
    //             SizedBox(
    //               width: 30,
    //               height: 30,
    //               child: CircularProgressIndicator(),
    //         );
    //       }
    //       return Center(
    //         child: Container(
    //           child: child,
    //         ),
    //       );
    //     }
    // ));
  }
}

