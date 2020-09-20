import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mithandvaerk/screens/forgot_password.dart';
import 'package:provider/provider.dart';

import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/products_list.dart';
import 'screens/register.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => User()),
      ],
      child: Mithandvaerk(),
    ),
  );
}

class User with ChangeNotifier {
  bool _isLogin = false;
  String _currentUserName = '';

  bool get isLogin => _isLogin;

  String get currentUserName => _currentUserName;

  String login() {
    _currentUserName = 'devwp';
    notifyListeners();
  }
}

class Mithandvaerk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(
          title: 'Mithåndværk',
        ),
        initialRoute: '/',
        routes: {
          '/home': (BuildContext context) => Home(
                title: 'Home',
              ),
          '/register': (BuildContext context) => Register(
                title: 'Register',
              ),
          '/forgotPassword': (BuildContext context) => ForgotPassword(title: 'ForgotPassword'),
          '/productList': (BuildContext context) => ProductsList(),
        });
  }
}
