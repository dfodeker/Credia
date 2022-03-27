import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: "Welcome to Credia",
              body:
                  "Credia is a mobile application that helps you to manage your credit cards.",
              image: Image.asset("assets/images/onboarding_1.png"),
              decoration: const PageDecoration(
                pageColor: Color(0xFFD3D4878),
                titleTextStyle: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                bodyTextStyle: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                ),
                //bodyPadding: EdgeInsets.only(left: 16.0, right: 16.0),
                //contentPadding: EdgeInsets.only(top: 30.0),
                imagePadding: EdgeInsets.only(top: 50.0),
              ),
            ),
          ],
          done: Text('Read', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () {},
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );
}
