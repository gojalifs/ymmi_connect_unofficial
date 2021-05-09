import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'homepage_screen.dart';

class LoginUser extends StatefulWidget {
  @override
  _LoginUserState createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  final _formKey = new GlobalKey<FormState>();
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  TextEditingController _userController = new TextEditingController();
  TextEditingController _passwdController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    var loginBtn = Material(
      color: Colors.purple,
      borderRadius: BorderRadius.circular(10),
      child: MaterialButton(
        onPressed: () {
          if (_formKey.currentState.validate()) {
            // showToast();
            // doLogin();
          }
        },
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

    var signUpBtn = MaterialButton(
      onPressed: () {},
      child: Text("Create New Account"),
    );

    var loginForm = Container(
      // key: _formKey,
      padding: EdgeInsets.all(30),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  "YMMI Connect",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                )),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter e-mail";
                }
                return null;
              },
              controller: _userController,
              decoration: InputDecoration(
                  labelText: "e-mail",
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter Password";
                }
                return null;
              },
              controller: _passwdController,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "password",
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            loginBtn,
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text("or"),
            ),
            signUpBtn,
          ],
        ),
      ),
    );

    return Scaffold(
      key: _scaffoldKey,
      // backgroundColor: Color.fromRGBO(25, 104, 217, 1.0),
      appBar: null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [loginForm],
        ),
      ),
    );
  }

  void showToast() {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(SnackBar(
      content: Text('Processing'),
    ));
  }

  // Future doLogin() async {
  //
  //   final response = await http.post('https://reqres.in/api/login',
  //       body: {'email': _userController.text, 'password': _passwdController.text},
  //       headers: {'Accept': 'application/json'});
  //   if (response.statusCode == 200) {
  //     Navigator.pushReplacementNamed(context, '/home');
  //     // ScaffoldMessenger.of(context)
  //     //     .showSnackBar(SnackBar(content: Text('Login Gagal')));
  //   }
  //   else {
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text('Login Gagal')));
  //   }
  // }
}
