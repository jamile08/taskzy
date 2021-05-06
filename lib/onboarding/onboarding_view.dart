import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:taskzy/core/core.dart';
import 'package:taskzy/onboarding/widgets/page_clock.dart';
import 'package:taskzy/onboarding/widgets/page_pin.dart';
import 'package:taskzy/onboarding/widgets/page_tick.dart';

class OnBoardingView extends StatefulWidget {
  @override
  _OnBoardingViewState createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final controller = PageController();
  bool showSmoothPageIndicator = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.close, size: 35, color: Colors.grey),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
                },
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.75,
              child: PageView(
                clipBehavior: Clip.antiAlias,
                controller: controller,
                onPageChanged: (value) {
                  if (value == 2) {
                    setState(() {
                      showSmoothPageIndicator = false;
                    });
                  } else {
                    setState(() {
                      showSmoothPageIndicator = true;
                    });
                  }
                },
                children: [
                  PagePin(),
                  PageClock(),
                  PageTick(),
                ],
              ),
            ),
            //if (controller.page != 2)
            Expanded(
              child: Visibility(
                visible: showSmoothPageIndicator ? true : false,
                child: Container(
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      expansionFactor: 3,
                      activeDotColor: AppColors.grey,
                      dotColor: AppColors.grey,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
