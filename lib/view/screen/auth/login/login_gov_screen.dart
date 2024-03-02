import 'package:fire_notify/view/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginGov extends StatelessWidget {
  const LoginGov({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginForm(
        text: 'Governorate name',
      ),
    );
  }
}
