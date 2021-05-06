import 'package:flutter/material.dart';
import 'package:taskzy/core/core.dart';

class PageClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            AppImages.clock,
            width: MediaQuery.of(context).size.width * 0.60,
          ),
          SizedBox(height: 40),
          Text.rich(
            TextSpan(
              text: "Organize",
              style: AppTextStyles.headingRedExtraBold35,
              children: [
                TextSpan(
                  text: " seu tempo de forma ",
                  style: AppTextStyles.headingRedRegular35,
                ),
                TextSpan(
                  text: "otimizada.",
                  style: AppTextStyles.headingRedExtraBold35,
                )
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
