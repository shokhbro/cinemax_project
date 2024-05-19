import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:imtihon/pages/home_page.dart';
import 'package:imtihon/pages/sign_up.dart';
import 'package:imtihon/pages/welcome_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String? emailError;
  String? passwordError;

  String? validateEmail(String email) {
    if (email.isEmpty) {
      return "iltimos email kiriting";
    } else if (!email.contains('@')) {
      return "emailda @ bo'lishi lozim";
    }
    return null;
  }

  String? validatePassword(String password) {
    if (password.isEmpty) {
      return "iltimos parol kiriting";
    }
    return null;
  }

  void isTrueLogin() {
    setState(() {
      emailError = validateEmail(emailController.text);
      passwordError = validatePassword(passwordController.text);
      if (emailError == null && passwordError == null) {
        emailController.clear();
        passwordController.clear();
        Navigator.of(context).push(
          MaterialPageRoute(builder: (ctx) => const HomePage()),
        );
      }
    });

    if (emailError == null && passwordError == null) {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => const HomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1d2b),
      appBar: AppBar(
        toolbarHeight: 90,
        centerTitle: true,
        backgroundColor: const Color(0xff1f1d2b),
        leadingWidth: 90,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop(const WelcomeCinemax());
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff212331),
                ),
                child: const Center(
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
        title: const Text(
          "Login",
          style: TextStyle(
            fontFamily: 'Montserrat',
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hi, Tiffany",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const Gap(5),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome back! Please enter\n               your details.",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xffEBEBEF),
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              const Gap(50),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "  Tiffanijearsey@gmail.com",
                  hintStyle: const TextStyle(
                    color: Color(0xff92929D),
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                  ),
                  label: const Text(
                    "Email Address",
                    style: TextStyle(
                      color: Color(0xffEBEBEF),
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                    ),
                  ),
                  errorText: emailError,
                ),
              ),
              const Gap(35),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "  your password",
                  hintStyle: const TextStyle(
                    color: Color(0xff92929D),
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                  ),
                  label: const Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xffEBEBEF),
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                    ),
                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.eye_slash_fill,
                    color: Color(0xff92929D),
                    size: 24,
                  ),
                  errorText: passwordError,
                ),
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => const SignUpPage()),
                      );
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xff12CDD9),
                        fontSize: 11,
                      ),
                    ),
                  ),
                  const Gap(25),
                ],
              ),
              const Gap(50),
              InkWell(
                onTap: isTrueLogin,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff12CDD9),
                  ),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
