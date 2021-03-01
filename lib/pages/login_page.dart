import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            color: Theme.of(context).accentColor,
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: SvgPicture.asset('assets/images/login_page.svg'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0.0, -4.0),
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                        color: Colors.grey.withOpacity(0.4)
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.0),
                  child: Text(
                    'Password',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0.0, -4.0),
                            blurRadius: 5.0,
                            spreadRadius: 2.0,
                            color: Colors.grey.withOpacity(0.4)
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.65,right: MediaQuery.of(context).size.width * 0.025),
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(18.0),
                    boxShadow: kElevationToShadow[3]
                  ),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * 0.05
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}
