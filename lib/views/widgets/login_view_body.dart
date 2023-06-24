import 'package:chat_ui_setup/views/register_view.dart';
import 'package:chat_ui_setup/views/widgets/already_have_an_account.dart';
import 'package:chat_ui_setup/views/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
            ),
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const LoginForm(),
          const SizedBox(
            height: 32,
          ),
          AuthAuthenticationOption(
            action: 'Register',
            text: 'Don\'t have an account?',
            onPressed: () {
              Navigator.pushNamed(context, RegisterView.id);
            },
          )
        ],
      ),
    );
  }
}
