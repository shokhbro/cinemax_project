import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:imtihon/pages/search_page.dart';

class SharePage extends StatefulWidget {
  const SharePage({super.key});

  @override
  State<SharePage> createState() => _SharePageState();
}

class _SharePageState extends State<SharePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background_share.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: 327,
                height: 234,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff252836),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color(0xff201f2d),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pop(const SearchPage());
                                  },
                                  child: SvgPicture.asset(
                                      "assets/icons/delete.svg")),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Share to",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    const Gap(10),
                    const Divider(
                      color: Color(0xff201f2d),
                      indent: 35,
                      endIndent: 35,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: const Color(0xff4267B2),
                            radius: 24,
                            child:
                                SvgPicture.asset("assets/icons/facebook.svg"),
                          ),
                          const Gap(20),
                          Image.asset(
                            "assets/images/instagram_icon.png",
                            width: 49,
                            height: 49,
                          ),
                          const Gap(20),
                          CircleAvatar(
                            backgroundColor: const Color(0xff2196F3),
                            radius: 24,
                            child:
                                SvgPicture.asset("assets/icons/group2207.svg"),
                          ),
                          const Gap(20),
                          CircleAvatar(
                            backgroundColor: const Color(0xff1F1D2B),
                            radius: 24,
                            child:
                                SvgPicture.asset("assets/icons/telegram.svg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
