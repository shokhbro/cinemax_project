import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:imtihon/pages/welcome_page.dart';

class Start2 extends StatefulWidget {
  const Start2({super.key});

  @override
  State<Start2> createState() => _StartState();
}

class _StartState extends State<Start2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => const WelcomeCinemax()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1d2b),
      body: Center(
        child: SvgPicture.asset("assets/icons/cinemax_icon.svg"),
      ),
    );
  }
}
