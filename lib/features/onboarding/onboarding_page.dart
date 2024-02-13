import 'package:financy_app/commons/app_colors.dart';
import 'package:financy_app/commons/app_text_styles.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 60.0,
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: AppColors.iceWhite,
                child: Image.asset('assets/images/man.png'),
              )),
          Text(
            " Spend Smarter ",
            style: AppTextStyle.mediumText
                .copyWith(color: AppColors.greenlightTwo),
          ),
          Text(" Save More ",
              style: AppTextStyle.mediumText
                  .copyWith(color: AppColors.greenlightTwo)),
          ElevatedButton(onPressed: null, child: Text('Get Started')),
          Text(
            'Already have account? Log In',
            style: AppTextStyle.smallText.copyWith(color: AppColors.grey),
          ),
          SizedBox(height: 40.0)
        ],
      ),
    );
  }
}
