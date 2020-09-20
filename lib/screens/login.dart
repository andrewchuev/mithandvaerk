import 'package:flutter/material.dart';
import 'package:mithandvaerk/shared/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mithandvaerk/widgets/appbar.dart';
import 'package:mithandvaerk/widgets/inputs.dart';

class Login extends StatelessWidget {
  final String title;

  Login({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar('Mithåndværk'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 100, 25, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisSize: MainAxisSize.,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Velkommen tilbage',
                style: h2,
              ),
              SizedBox(height: 25.0),
              Text(
                'Log ind for at fortsætte',
                style: h4,
              ),
              SizedBox(height: 25.0),
              inputField(hintText: 'Emailadresse', icon: Icon(Icons.email)),
              SizedBox(height: 25.0),
              inputField(hintText: 'Kodeord', icon: Icon(Icons.lock)),
              SizedBox(height: 15.0),
              Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/forgotPassword'),
                    child: Text(
                      'Glemt kodeord?',
                      style: h5,
                    ),
                  )),
              SizedBox(height: 45.0),
              inputButton(context: context, text: 'Log ind', route: '/productList'),
              SizedBox(height: 45.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Har ikke en konto?',
                    style: p,
                  ),
                  SizedBox(width: 5.0),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, '/register'),
                    child: Text(
                      'opret nu',
                      style: TextStyle(fontWeight: FontWeight.bold, decoration: TextDecoration.underline, fontSize: 18),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
