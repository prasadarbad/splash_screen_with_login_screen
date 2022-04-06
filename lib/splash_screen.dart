import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:splash_screen/login_screen.dart';

class Splash extends StatefulWidget {
  static const routeName = '/splash-screen';

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 4500), () {});

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: Lottie.asset('assets/lottie/89628-rocket-no-blackground.json'),
      ),
    ));
  }
}
