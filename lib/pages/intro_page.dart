import 'package:flutter/material.dart';
import 'package:products/pages/second_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(
      Duration(seconds: 5),
      () {
        return Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SecondPage(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('images/elogo.png'),
      ),
    );
  }
}
