import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sisi/pages/login_page.dart';
import 'package:sisi/widgets/custom_dialog_box.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Theme.of(context).accentColor,
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height *0.05,
                left: MediaQuery.of(context).size.width *0.05,
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      fontFamily: 'Jonathan',
                      fontSize: MediaQuery.of(context).size.width *0.15,
                  ),
                )
              ),
              Positioned(
                right: MediaQuery.of(context).size.width * 0.05,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: SvgPicture.asset('assets/images/welcome_image.svg'),
                )
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Material(
                          type: MaterialType.transparency,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(15.0),
                            onTap: (){
                              showDialog(context: context, builder: (BuildContext context){
                                return CustomDialogBox(text: "Let\'s get started", svgAsset: 'assets/images/press_play.svg', isDone: false);
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1,right: MediaQuery.of(context).size.width * 0.08),
                              height: MediaQuery.of(context).size.height * 0.095,
                              width: MediaQuery.of(context).size.width * 0.33,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: kElevationToShadow[6]
                              ),
                              child: Center(
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      fontSize: MediaQuery.of(context).size.width * 0.05
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'Create a new account',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 12.0
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Material(
                          type: MaterialType.transparency,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(15.0),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1,left: MediaQuery.of(context).size.width * 0.08),
                              height: MediaQuery.of(context).size.height * 0.095,
                              width: MediaQuery.of(context).size.width * 0.33,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: kElevationToShadow[6]
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
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          'I have an account',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 12.0
                          ),
                        )
                      ],
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
