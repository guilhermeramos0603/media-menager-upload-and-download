// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  Function() onPressed;
  CustomLoginButtonComponent({super.key, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: const Text('Login'));
  }
}
