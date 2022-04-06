import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:splash_screen/login_screen.dart';

class Splash extends StatefulWidget {
  static const routeName = '/splash-screen';

  const Splash({Key? key}) : super(key: key);

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
    await Future.delayed(const Duration(seconds: 5), () {});

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
        child: Lottie.asset('assets/lottie/40238-happy-coding.json'),
      ),
    ));
  }
}
