import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:imtihon/pages/home_page.dart';
import 'package:imtihon/pages/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  String userPassword = '';
  String userEmail = '';
  String userName = '';

  bool isDone = false;
  bool isButtonEnabled = false;

  String? emailError;
  String? passwordError;
  String? nameError;

  @override
  void initState() {
    super.initState();

    emailController.addListener(dataInput);
    passwordController.addListener(dataInput);
    nameController.addListener(dataInput);
  }

  @override
  void dispose() {
    emailController.removeListener(dataInput);
    passwordController.removeListener(dataInput);
    nameController.removeListener(dataInput);
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  void dataInput() {
    setState(() {
      nameError = errorName(nameController.text);
      emailError = errorEmail(emailController.text);
      passwordError = errorPassword(passwordController.text);
      userEmail = emailController.text;
      userName = nameController.text;
      userPassword = passwordController.text;
      isButtonEnabled = userEmail.isNotEmpty &&
          userPassword.isNotEmpty &&
          userName.isNotEmpty &&
          isDone;
    });
  }

  String? errorEmail(String email) {
    if (email.isEmpty) {
      return "Iltimos email kiriting";
    } else if (!email.contains('@')) {
      return "Emailda '@' belgisi topilmadi!";
    }
    return null;
  }

  String? errorPassword(String password) {
    if (password.isEmpty) {
      return "Iltimos parolni kiriting";
    } else if (password.length < 8) {
      return "Parol uzunligi kamida 8 tadan oshishi lozim";
    }
    return null;
  }

  String? errorName(String password) {
    if (password.isEmpty) {
      return "Iltimos ismingizni kiriting";
    }
    return null;
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
                Navigator.of(context).pop(const LoginPage());
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
          "Sign Up",
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
                    "Let's get started",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 26,
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
                      fontSize: 13,
                    ),
                  )
                ],
              ),
              const Gap(50),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "  Tiffany",
                  hintStyle: const TextStyle(
                    color: Color(0xff92929D),
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                  ),
                  label: const Text(
                    "Full name",
                    style: TextStyle(
                      color: Color(0xffEBEBEF),
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                    ),
                  ),
                  errorText: nameError,
                ),
              ),
              const Gap(25),
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
              const Gap(25),
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
                  errorText: passwordError,
                  suffixIcon: const Icon(
                    CupertinoIcons.eye_slash_fill,
                    color: Color(0xff92929D),
                    size: 24,
                  ),
                ),
              ),
              const Gap(10),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isDone = !isDone;
                        dataInput();
                      });
                    },
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: const Color(0xff92929D),
                        ),
                      ),
                      child: isDone
                          ? const Icon(
                              Icons.done_sharp,
                              color: Colors.white,
                            )
                          : null,
                    ),
                  ),
                  const Gap(10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(10),
                      Row(
                        children: [
                          Text(
                            "l agree to the",
                            style: TextStyle(
                              color: Color(0xff92929D),
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                            ),
                          ),
                          Gap(5),
                          Text(
                            "Terms and Service",
                            style: TextStyle(
                              color: Color(0xff12CDD9),
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "and",
                            style: TextStyle(
                              color: Color(0xff92929D),
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                            ),
                          ),
                          Gap(5),
                          Text(
                            "Privacy Policy",
                            style: TextStyle(
                              color: Color(0xff12CDD9),
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(50),
              InkWell(
                onTap: isButtonEnabled
                    ? () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => const HomePage()),
                        );
                      }
                    : null,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: isButtonEnabled
                        ? const Color(0xff12CDD9)
                        : const Color(0xff92929D),
                  ),
                  child: const Center(
                    child: Text(
                      "Sign Up",
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
