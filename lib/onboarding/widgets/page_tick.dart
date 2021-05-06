import 'package:flutter/material.dart';
import 'package:taskzy/core/core.dart';

class PageTick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            AppImages.tick,
            width: MediaQuery.of(context).size.width * 0.60,
          ),
          SizedBox(height: 40),
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
            child: Text.rich(
              TextSpan(
                text: "Tudo dentro do ",
                style: AppTextStyles.headingRedRegular35,
                children: [
                  TextSpan(
                    text: "prazo",
                    style: AppTextStyles.headingRedExtraBold35,
                  ),
                  TextSpan(text: ", sem perder mais nada. "),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
              },
              style: AppButtonStyle.getButtonStyle(
                backgroundColor: Colors.white,
                boderColor: AppColors.red,
                overlay: AppColors.lightGrey,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ir para Home",
                      style: TextStyle(color: AppColors.red),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: AppColors.red,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
