import 'package:flutter/material.dart';
import 'package:media_manager/features/login/presentation/controller/loginController.dart';
import 'package:media_manager/features/login/presentation/widgets/customLoginButtonComponent.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.people,
                size: 180,
                color: Colors.deepPurple,
              ),
              TextField(
                onChanged: (value) {
                  controller.setUserName(value);
                },
                decoration: const InputDecoration(
                  label: Text("Name"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomLoginButtonComponent(
                onPressed: () => controller.login(controller.userName),
              )
            ]),
      ),
    );
  }
}
