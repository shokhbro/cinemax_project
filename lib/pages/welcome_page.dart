import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:imtihon/pages/login.dart';
import 'package:imtihon/pages/sign_up.dart';

class WelcomeCinemax extends StatefulWidget {
  const WelcomeCinemax({super.key});

  @override
  State<WelcomeCinemax> createState() => _WelcomeCinemaxState();
}

class _WelcomeCinemaxState extends State<WelcomeCinemax> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1d2b),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(60),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/cinemax.svg"),
                  ],
                ),
                const Gap(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "CINEMAX",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "    Enter your registered\nPhone Number to Sign Up",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xff92929D),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const Gap(50),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const SignUpPage()));
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: const Color(0xff12CDD9),
                          ),
                          child: const Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "l already have an account?",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xff92929D),
                      ),
                    ),
                    const Gap(5),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Color(0xff12CDD9),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff222533),
                      ),
                    ),
                    const Gap(10),
                    const Text(
                      "Or Sign up with",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xff92929D),
                      ),
                    ),
                    const Gap(10),
                    Container(
                      width: 50,
                      height: 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff222533),
                      ),
                    ),
                  ],
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 34.5,
                      child: SvgPicture.asset("assets/icons/google.svg"),
                    ),
                    const Gap(20),
                    CircleAvatar(
                      backgroundColor: const Color(0xff252836),
                      radius: 34.5,
                      child: SvgPicture.asset("assets/icons/apple.svg"),
                    ),
                    const Gap(20),
                    CircleAvatar(
                      backgroundColor: const Color(0xff4267B2),
                      radius: 34.5,
                      child: SvgPicture.asset("assets/icons/facebook.svg"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
