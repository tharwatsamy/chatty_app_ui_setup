import 'package:chat_ui_setup/constants.dart';
import 'package:chat_ui_setup/views/login_view.dart';
import 'package:chat_ui_setup/views/register_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Chatty());
}

class Chatty extends StatelessWidget {
  const Chatty({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: kPrimarySwatch,
          brightness: Brightness.dark,
          fontFamily: 'Inter',
        ),
        routes: {
          LoginView.id: (context) => const LoginView(),
          RegisterView.id: (context) => const RegisterView(),
        },
        initialRoute: LoginView.id);
  }
}
