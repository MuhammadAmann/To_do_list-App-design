import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_list/data.dart';
import 'list.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    var myFocusNode;
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: bgcolor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Image.asset(login_image, height: 200),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Welcom!",
                  style: TextStyle(
                      color: pcolor,
                      fontFamily: 'p_font',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 6),
              Text(
                "Please, Log in.",
                style: TextStyle(
                    color: hfcolor,
                    fontFamily: 'sfpro_font',
                    fontSize: 26,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 300,
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Enter username",
                      contentPadding:
                          EdgeInsets.only(top: 7, bottom: 7, left: 14),
                      labelStyle: TextStyle(
                        color: scolor.withOpacity(0.7),
                        fontSize: 14,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(37)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: scolor),
                        borderRadius: BorderRadius.circular(37),
                      )),
                ),
              ),
              SizedBox(height: 14),
              Container(
                height: 50,
                width: 300,
                child: TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: "Enter password",
                      contentPadding:
                          EdgeInsets.only(top: 7, bottom: 7, left: 14),
                      labelStyle: TextStyle(
                        color: scolor.withOpacity(0.7),
                        fontSize: 14,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(37)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: scolor),
                        borderRadius: BorderRadius.circular(37),
                      )),
                ),
              ),
              CupertinoButton(
                  child: Container(
                    padding: EdgeInsets.zero,
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      color: hfcolor,
                      borderRadius: BorderRadius.circular(37),
                    ),
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => To_dolist())));
                  }),
              SizedBox(height: 6),
              Center(
                  child: Text(
                "- Or -",
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              )),
              SizedBox(
                height: 6,
              ),
              CupertinoButton(
                  child: Container(
                    padding: EdgeInsets.zero,
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 0,
                          color: Colors.black.withOpacity(0.6),
                        )
                      ],
                      borderRadius: BorderRadius.circular(37),
                      color: scolor,
                    ),
                    child: Center(
                        child: Text(
                      "Create Account",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
