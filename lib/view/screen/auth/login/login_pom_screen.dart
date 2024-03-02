import 'package:fire_notify/view/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginPom extends StatelessWidget {
  const LoginPom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginForm(
        text: 'Directorate General',
      ),
    );
  }
}
