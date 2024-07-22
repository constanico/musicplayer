import 'package:flutter/material.dart';
import 'package:flutter_musicplayer/common/helpers/is_dark_mode.dart';

class OutlineAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double ? height;
  const OutlineAppButton({
      required this.onPressed,
      required this.title,
      this.height,
      super.key
    });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          minimumSize: Size.fromHeight(height ?? 80)
        ),
        child: Text(
          title,
          style: TextStyle(
            color: context.isDarkMode ? Colors.white : Colors.black
          ),
        )
      );
  }
}