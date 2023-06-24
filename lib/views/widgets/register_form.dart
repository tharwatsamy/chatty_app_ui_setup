import 'package:chat_ui_setup/views/widgets/avatars_list.dart';
import 'package:chat_ui_setup/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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
            hintText: 'Enter your name',
          ),
          const SizedBox(
            height: 16,
          ),
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
            height: 16,
          ),
          const AvatarListWidget(),
          const SizedBox(
            height: 32,
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
