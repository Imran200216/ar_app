import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 1,
          ),
          Center(
            child: Image.asset(
              "assets/images/splash/splash-logo.png",
              height: 240,
              width: 240,
              fit: BoxFit.cover,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Image.asset(
            "assets/images/splash/branding.png",
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),

        ],
      ),
    );
  }
}
