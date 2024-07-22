import 'package:flutter/material.dart';
import 'package:flutter_musicplayer/common/widgets/button/basic_app_button.dart';
import 'package:flutter_musicplayer/common/widgets/button/outline_app_button.dart';
import 'package:flutter_musicplayer/core/configs/assets/app_vectors.dart';
import 'package:flutter_musicplayer/core/configs/theme/app_colors.dart';
import 'package:flutter_svg/svg.dart';

class SignupSigninPage extends StatelessWidget {
  const SignupSigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppVectors.logo
                  ),
                  const SizedBox(height: 55,),
                  const Text(
                    'Enjoy Listening to Music',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                  const SizedBox(height: 21,),
                  const Text(
                    'Listen your favorite music here only in Spotify, Sign Up or Sign in Now',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: AppColors.grey
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 13,),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: () {},
                          title: 'Register',
                        )
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        flex: 1,
                        child: OutlineAppButton(
                          onPressed: () {},
                          title: 'Sign In',
                        )
                      ),
                    ],
                  )
                ],
                ),
            ),
          )
        ],
      ),
    );
  }
}