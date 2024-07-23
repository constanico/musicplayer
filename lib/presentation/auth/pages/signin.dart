import 'package:flutter/material.dart';
import 'package:flutter_musicplayer/common/widgets/appbar/app_bar.dart';
import 'package:flutter_musicplayer/common/widgets/button/basic_app_button.dart';
import 'package:flutter_musicplayer/core/configs/assets/app_vectors.dart';
import 'package:flutter_musicplayer/presentation/auth/pages/signup.dart';
import 'package:flutter_svg/svg.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _signupText(context),
      appBar: BasicAppbar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 30
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _signinText(),
            const SizedBox(height: 50,),
            _emailField(context),
            const SizedBox(height: 20,),
            _passwordField(context),
            const SizedBox(height: 20,),
            BasicAppButton(
              onPressed: () {}, 
              title: 'Sign In'
            )
          ],
        ),
      ),
    );
  }

  Widget _signinText() {
    return const Text(
      'Sign In',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Enter Email or Username'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Password'
      ).applyDefaults(
        Theme.of(context).inputDecorationTheme
      ),
    );
  }

  Widget _signupText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 30
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Not a Member? ',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (BuildContext context) => const SignUpPage()
                )
              );
            },
            child: const Text(
              'Register Now',
              style: TextStyle(
                color: Color(0xff288CE9)
              ),
            )
          )
        ],
      ),
    );
  }
}