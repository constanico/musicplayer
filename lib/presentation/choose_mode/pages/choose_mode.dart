import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_musicplayer/common/helpers/is_dark_mode.dart';
import 'package:flutter_musicplayer/common/widgets/button/basic_app_button.dart';
import 'package:flutter_musicplayer/core/configs/assets/app_vectors.dart';
import 'package:flutter_musicplayer/core/configs/theme/app_colors.dart';
import 'package:flutter_musicplayer/presentation/auth/pages/signup_signin.dart';
import 'package:flutter_musicplayer/presentation/choose_mode/bloc/theme_cubit.dart';
import 'package:flutter_svg/svg.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                        AppVectors.logo
                      ),
                  ),
                ),
                const Spacer(),
                Text(
                  'Choose Mode',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: context.isDarkMode ? Colors.white : AppColors.darkGrey,
                    fontSize: 18
                  ),
                ),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                          },
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff30393C).withOpacity(0.5),
                                    shape: BoxShape.circle
                                  ),
                                  child: SvgPicture.asset(
                                    AppVectors.moon,
                                    fit: BoxFit.none
                                  ),
                                ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const Text(
                          'Dark Mode',
                            style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: AppColors.grey
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 40,),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                          },
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff30393C).withOpacity(0.5),
                                    shape: BoxShape.circle
                                  ),
                                  child: SvgPicture.asset(
                                    AppVectors.sun,
                                    fit: BoxFit.none
                                  ),
                                ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const Text(
                          'Light Mode',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: AppColors.grey
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 50,),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const SignupSigninPage()
                      )
                    );
                  },
                  title: 'Continue'
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}