import 'package:flutter/material.dart';
import 'package:mithandvaerk/shared/styles.dart';
import 'package:mithandvaerk/widgets/appbar.dart';
import 'package:mithandvaerk/widgets/inputs.dart';

class Register extends StatelessWidget {
  final String title;

  Register({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: mainAppBar('Mithåndværk'),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Opret din konto',
                  style: h2,
                ),
              ),
              inputField(hintText: 'Navn', icon: Icon(Icons.nature_people)),
              inputField(hintText: 'Last Name', icon: Icon(Icons.nature_people)),
              inputField(hintText: 'Address', icon: Icon(Icons.map)),
              inputField(hintText: 'Postnummer', icon: Icon(Icons.open_in_new)),
              inputField(hintText: 'By', icon: Icon(Icons.map)),
              inputField(hintText: 'Emailadresse', icon: Icon(Icons.email)),
              inputField(hintText: 'Mobile', icon: Icon(Icons.phone_iphone)),
              Row(
                children: [
                  Text('Create account as: '),
                  Radio(
                    value: 'Vendor',
                  ),
                  Text('Vendor'),
                  Radio(
                    value: 'Vendor',
                  ),
                  Text('Customer')
                ],
              ),
              Row(
                children: [
                  Text('Gender: '),
                  Radio(
                    value: '',
                  ),
                  Text('Male'),
                  Radio(
                    value: '',
                  ),
                  Text('Female')
                ],
              ),
              inputField(hintText: '1/1/1990', icon: Icon(Icons.calendar_today)),
              inputButton(text: 'Tilmelde'),
            ],
          ),
        ),
      ),
    );
  }
}
