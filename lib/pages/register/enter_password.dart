import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/main_page.dart';
import 'package:spotify_clone/widgets/register/register_next_button.dart';
import 'package:spotify_clone/widgets/textfields/register_textfield.dart';

class EnterPassword extends StatelessWidget {
  static const String id='password';
  const EnterPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        title: const Text(
          'Create account',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Create a password',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const RegisterTextfield(),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Use atleast 8 characters.",
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NextButton(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, MainPage.id,);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
