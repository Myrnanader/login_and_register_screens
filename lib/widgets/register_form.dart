import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          label: "Full Name",
          hint: 'Your full name, e.g. John Doe',
        ),
        const SizedBox(height: 16),
        CustomTextField(
          label: "Email",
          hint: 'Your email, e.g. johndoe@gmail.com',
        ),
        const SizedBox(height: 16),
        CustomTextField(
          label: 'Phone Number',
          hint: 'Your phone number, e.g. +01 112 xxx xxx',
        ),
        const SizedBox(height: 16),
        CustomTextField(
          label: "Password",
          hint: 'Your password, at least 8 characters',
          obscure: true,
        ),
        const SizedBox(height: 16),
        CustomTextField(
          label: "Confirm Password",
          hint: 'Re-type your password',
          obscure: true,
        ),
        const SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {
          },
          child: const Text("Register"),
        ),
        const SizedBox(height: 16),
        TextButton(
          onPressed: () {
            Navigator.pop(context); // ينرجع لصفحة Login
          },
          child: const Text("Already have an account? Login here"),
        ),
      ],
    );
  }
}
