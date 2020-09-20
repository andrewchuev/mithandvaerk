import 'package:flutter/material.dart';
import 'package:mithandvaerk/shared/styles.dart';
import 'package:mithandvaerk/widgets/appbar.dart';
import 'package:mithandvaerk/widgets/inputs.dart';

class ForgotPassword extends StatelessWidget {
  final String title;
  ForgotPassword({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar('Mithåndværk'),
      body: Container(

        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Forgot Password?', style: h3,),
            SizedBox(height: 25.0),
            Text('Enter your email id we will send', style: p,),
            Text('you password reset instruction on yor id', style: p,),
            SizedBox(height: 25.0),
            inputField(hintText: 'Email Address', icon: Icon(Icons.email)),
            SizedBox(height: 25.0),
            inputButton(text: 'Submit')

          ],
        ),
      ),
    );

  }
}