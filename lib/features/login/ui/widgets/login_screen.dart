import 'package:flutter/material.dart';
import 'package:flutter_complete_flutter/core/theming/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.mainBlue,
        title: const Text('Login Screen'),
      ),
      body: const Center(
        child: Text('Login Screen'),
      ),
    );
  }
}
