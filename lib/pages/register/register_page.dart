import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/register/enter_email.dart';
import 'package:spotify_clone/widgets/register/register_butoons.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xff121212),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/originallogo.png'),
              height: 53,
            ),
            const SizedBox(
              height: 13,
            ),
            const Text(
              'Millions of Songs.\n Free on Spotify.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            RegisterButton(
              color: const Color(0xff1ED760),
              title: "Sign up for free",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EnterEmail(),
                  ),
                );
              },
              textcolor: Colors.black,
              borderColor: Colors.transparent,
            ),
            RegisterButton(
              color: const Color(0xff121212),
              title: "Continue with Google",
              onTap: () {},
              textcolor: Colors.white,
              borderColor: Colors.white,
            ),
            RegisterButton(
              color: const Color(0xff121212),
              title: "Continue with Facebook",
              onTap: () {},
              textcolor: Colors.white,
              borderColor: Colors.white,
            ),
            RegisterButton(
              color: const Color(0xff121212),
              title: "Continue with Apple",
              onTap: () {},
              textcolor: Colors.white,
              borderColor: Colors.white,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Log in',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
