import 'package:flutter/material.dart';
import 'package:taskzy/core/core.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.red,
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: "Vamos começar a sua jornada no ",
                style: AppTextStyles.titleWhiteMedium35,
                children: [
                  TextSpan(
                    text: "Taskzy",
                    style: AppTextStyles.titleWhiteExtraBold40,
                  ),
                  TextSpan(text: "."),
                ],
              ),
            ),
            SizedBox(height: 60),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Text(
                "Administre, organize e realize sua tarefas como nunca antes.",
                style: AppTextStyles.headingWhiteRegular20,
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 60),
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.blue,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    style: AppButtonStyle.getButtonStyle(
                        backgroundColor: Colors.white),
                    onPressed: () {},
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Cadastro",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    style: AppButtonStyle.getButtonStyle(
                        backgroundColor: AppColors.red),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
