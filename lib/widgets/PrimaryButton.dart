import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../commons/app_colors.dart';
import '../commons/app_text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const PrimaryButton({
    this.onPressed,
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(24)),
      child: Ink(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(38.0)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: AppColors.greenGradient)),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          onTap: onPressed,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24))),
            alignment: Alignment.center,
            height: 64,
            child: Text(
              text,
              style: AppTextStyle.mediumText18.copyWith(color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
