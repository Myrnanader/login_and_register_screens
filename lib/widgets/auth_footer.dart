import 'package:flutter/material.dart';
import '../screens/register_screen.dart';
import 'social_buttons.dart';
import 'package:flutter/gestures.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
            children: [
              const TextSpan(text: "Don't have an account yet? "),
              TextSpan(
                text: "Register here",
                style: const TextStyle(
                  color: Color(0xFFFF9800),
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
                recognizer:
                    TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const RegisterScreen(),
                          ),
                        );
                      },
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: Divider(color: Colors.grey.shade300, thickness: 1)),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "or login with",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Expanded(child: Divider(color: Colors.grey.shade300, thickness: 1)),
          ],
        ),
        const SizedBox(height: 16),
        const SocialButtons(),
      ],
    );
  }
}
