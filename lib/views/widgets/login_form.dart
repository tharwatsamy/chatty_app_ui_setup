import 'package:chat_ui_setup/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode _autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: _autoValidateMode,
      child: Column(
        children: [
          const CustomTextFormField(
            hintText: 'Enter your email',
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextFormField(
            hintText: 'Enter your password',
          ),
          const SizedBox(
            height: 36,
          ),
          CustomButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
              } else {
                setState(() {
                  _autoValidateMode = AutovalidateMode.always;
                });
              }
            },
            text: 'Login',
          ),
        ],
      ),
    );
  }
}
