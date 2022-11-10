import 'package:flutter/material.dart';
import 'package:weather_app_getx/constant/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);
  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
      ),
      color: AppColors.iconNearMeColor,
      iconSize: 30,
    );
  }
}
