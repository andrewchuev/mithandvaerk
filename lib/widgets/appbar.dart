import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mithandvaerk/shared/styles.dart';

PreferredSizeWidget mainAppBar (title) {
 return AppBar(

   backgroundColor: PrimaryColor,
   title: Row(
     children: [
       /*IconButton(
         icon: FaIcon(FontAwesomeIcons.chevronLeft),
         iconSize: 25,
         color: Colors.white,
         onPressed: () {},
       ),*/
       Text(
         title,
         style: logo,
       )
     ],
   ),
 );
}