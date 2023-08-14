import 'package:flutter/material.dart';

class LoginController {
  String userName = '';

  setUserName(String userName) {
    this.userName = userName;
  }

  bool checkAuthUser(String name) {
    return true;
  }

  login(BuildContext context, String name) {
    final checkUserAuth = checkAuthUser(name);

    if (checkUserAuth == true) {
      Navigator.pushNamed(context, "/itemPage");
    }
  }
}
