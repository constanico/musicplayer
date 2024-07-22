import 'package:flutter/material.dart';
import 'package:flutter_musicplayer/common/helpers/is_dark_mode.dart';
import 'package:flutter_musicplayer/common/widgets/button/basic_app_button.dart';
import 'package:flutter_musicplayer/core/configs/assets/app_vectors.dart';
import 'package:flutter_musicplayer/core/configs/theme/app_colors.dart';
import 'package:flutter_musicplayer/presentation/choose_mode/pages/choose_mode.dart';
import 'package:flutter_svg/svg.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

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
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                      AppVectors.logo
                    ),
                ),
                const Spacer(),
                Text(
                  'Enjoy Listening to Music',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: context.isDarkMode ? Colors.white : AppColors.darkGrey,
                    fontSize: 18
                  ),
                ),
                const SizedBox(height: 21,),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: context.isDarkMode ? AppColors.grey : AppColors.darkGrey,
                    fontSize: 13
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20,),
                BasicAppButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const ChooseModePage()
                        )
                    );
                  },
                  title: 'Get Started'
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}