import 'package:flutter/material.dart';
import 'package:job_connect/core/colors.dart';
import 'package:job_connect/core/space.dart';
import 'package:job_connect/core/text_style.dart';
import 'package:job_connect/data/splash_text.dart';
import 'package:job_connect/login//login_page.dart';
import 'package:job_connect/login/widget/main_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          Container(
            height: height,
            color: blackBG,
            child: Image.asset(
              'assets/image/background_home.jpg',
              height: height,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: height / 3,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: gradient,
                  begin: Alignment.center,
                  end: Alignment.center,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: 'Wellcome to my App!',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ]),
                  ),
                  const SpaceVH(height: 20.0),
                  const Text(
                    splashText,
                    textAlign: TextAlign.center,
                    style: headline2,
                  ),
                  const SizedBox(height: 20.0), // Adjust the space
                  Expanded(
                    // Use Expanded to center the button
                    child: Center(
                      child: Mainbutton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => const LoginPage()));
                        },
                        btnColor: blueButton,
                        text: 'Get Started',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
