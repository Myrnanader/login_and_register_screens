import 'package:flutter/material.dart';
import 'package:login_and_register_screens/widgets/background_circles_painter.dart';
import '../widgets/login_form.dart';
import '../widgets/auth_footer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9A826),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  const BackgroundCirclesPainterWidget(height: 220),
                  const Positioned(
                    top: 80,
                    left: 24,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Scrollbar(
                    radius: const Radius.circular(12),
                    thickness: 6,
                    thumbVisibility: true,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 40,
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 60),
                          LoginForm(),
                          SizedBox(height: 16),
                          AuthFooter(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Color(0xffEFF1F3),
              child: Icon(Icons.person, color: Color(0xFFFF9800), size: 30),
            ),
          ),
        ],
      ),
    );
  }
}
