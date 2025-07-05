import 'package:flutter/material.dart';
import 'custom_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool stayLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTextField(label: "Email", hint: "Enter your email"),
        const SizedBox(height: 16),
        const CustomTextField(
          label: "Password",
          hint: "Enter your password",
          obscure: true,
        ),
        Row(
          children: [
            Checkbox(
              value: stayLoggedIn,
              onChanged: (value) {
                setState(() {
                  stayLoggedIn = value!;
                });
              },
            ),
            const Text("Stay logged in?"),
            const Spacer(),
            TextButton(onPressed: () {}, child: const Text("Forgot Password?")),
          ],
        ),
        const SizedBox(height: 24),
        ElevatedButton(onPressed: () {}, child: const Text("Login")),
      ],
    );
  }
}
