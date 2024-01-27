import 'package:flutter/material.dart';
import 'package:jode_textfield/utils/utils.dart';

class HonePage extends StatelessWidget {
  const HonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: loginInputField(context),
    );
  }
}
