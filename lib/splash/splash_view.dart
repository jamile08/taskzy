import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:taskzy/core/core.dart';
import 'package:taskzy/home/home_view.dart';
import 'package:taskzy/onboarding/onboarding_view.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<bool> _isOnboarding;

  @override
  void initState() {
    super.initState();
    _isOnboarding =
        _prefs.then((value) => (value.getBool("isOnboarding") ?? false));
  }

  Future<void> _onboarding() async {
    final SharedPreferences preferences = await _prefs;
    preferences.setBool("isOnboarding", true);
  }

  Route _createRoute(view) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => view,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;
        var tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.red,
        width: double.infinity,
        height: double.infinity,
        child: FutureBuilder<bool>(
          future: _isOnboarding,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
                child: Text(
                  "Ocorreu um erro.",
                  style: AppTextStyles.headingRedRegular35,
                ),
              );
            }

            Widget view;
            if (snapshot.data!) {
              view = HomeView();
            } else {
              view = OnBoardingView();
              _onboarding();
            }
            Future.delayed(Duration(seconds: 4)).then((value) =>
                Navigator.pushReplacement(context, _createRoute(view)));

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 9,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.list_rounded,
                          size: 160,
                          color: Colors.white,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Taskzy",
                          style: AppTextStyles.titleWhiteExtraBold50,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.40,
                    child: Text(
                      "by Jamile Dev",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
