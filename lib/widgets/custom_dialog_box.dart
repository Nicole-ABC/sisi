import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sisi/pages/signup_page.dart';

class CustomDialogBox extends StatefulWidget {
  final String text;
  final String svgAsset;
  final bool isDone;

  CustomDialogBox({this.text, this.svgAsset, this.isDone});
  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      child: content(context, widget.text, widget.svgAsset, widget.isDone),
    );
  }
}

content(BuildContext context, String text, String svgAsset, bool isDone){
  return Container(
    width: MediaQuery.of(context).size.width * 0.95,
    height: MediaQuery.of(context).size.height * 0.6,
    decoration: BoxDecoration(
      color: Theme.of(context).accentColor
    ),
    child: Stack(
      children: [
        Positioned(
            top: MediaQuery.of(context).size.height *0.05,
            left: MediaQuery.of(context).size.width *0.05,
            child: Text(
              text ,
              style: TextStyle(
                fontFamily: 'Jonathan',
                fontSize: MediaQuery.of(context).size.width *0.095,
              ),
            )
        ),
        SizedBox(
          height: 8.0,
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04),
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.8,
            child: SvgPicture.asset(svgAsset),
          ),
        ),
        isDone ? Text('') : Positioned(
          bottom: MediaQuery.of(context).size.height * 0.03,
          right: MediaQuery.of(context).size.width * 0.002,
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
            },
            child: Container(
              height: MediaQuery.of(context).size.height * 0.03,
              child: Icon(
                Icons.arrow_forward,
                size: MediaQuery.of(context).size.width * 0.1,
              ),
            ),
          )
        )
      ],
    ),
  );
}
