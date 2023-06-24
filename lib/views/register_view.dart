import 'package:chat_ui_setup/views/widgets/register_view_body.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  static const id = 'register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover),
          ),
          child: const SingleChildScrollView(
            child: RegisterViewBody(),
          ),
        ),
      ),
    );
  }
}
