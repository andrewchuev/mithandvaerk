import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mithandvaerk/shared/styles.dart';

Widget inputField({String hintText, Widget icon}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5),
    child: TextField(
      style: loginField,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        suffixIcon: icon,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: hintText,
        border: loginFieldBorder,
      ),
    ),
  );
}

Widget searchInput({String hintText, Widget icon}) {
  return Container(
    height: 30,
    //padding: EdgeInsets.symmetric(vertical: 5),
    child: TextField(
      //style: searchField,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey[200],
        suffixIcon: icon,
        contentPadding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
        hintText: hintText,
        border: searchFieldBorder,
      ),
    ),
  );
}


Widget inputButton({context, String text, String route }) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 15),
    child: SizedBox(
      width: 180,
      child: FlatButton(
        //padding: EdgeInsets.all(3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 20.0),
            ),
            //Icon(Icons.arrow_right),
            IconButton(
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(FontAwesomeIcons.longArrowAltRight),
              // onPressed: () => Navigator.pushNamed(context, '/forgotPassword'),
              onPressed: () => Navigator.pushNamed(context, route),
            ),
          ],
        ),
        onPressed: () {},
        textColor: Colors.white,
        color: PrimaryColor,
        shape: OutlineInputBorder(borderSide: BorderSide(style: BorderStyle.solid, width: 1.0, color: Colors.white), borderRadius: new BorderRadius.circular(25.0)),
      ),
    ),
  );
}