import 'package:flutter/material.dart';
import 'package:taskzy/core/core.dart';

class PagePin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            AppImages.pin,
            width: MediaQuery.of(context).size.width * 0.60,
          ),
          SizedBox(height: 40),
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
            child: Text.rich(
              TextSpan(
                text: "Um jeito ",
                style: AppTextStyles.headingRedRegular35,
                children: [
                  TextSpan(
                    text: "novo",
                    style: AppTextStyles.headingRedExtraBold35,
                  ),
                  TextSpan(text: " para organizar suas "),
                  TextSpan(
                    text: "tasks.",
                    style: AppTextStyles.headingRedExtraBold35,
                  )
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
