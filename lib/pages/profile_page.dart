import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:imtihon/pages/download.dart';
import 'package:imtihon/pages/home_page.dart';
import 'package:imtihon/pages/search_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1d2b),
      appBar: AppBar(
        backgroundColor: const Color(0xff1f1d2b),
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
            fontFamily: "Montserrat",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 327,
                  height: 86,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: const Color(0xff252836)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage("assets/images/profile_image.png"),
                        ),
                        Gap(15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Tiffany",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Gap(5),
                            Text(
                              "Tiffanyjearsey@gmail.com",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Color(0xffB1B1B1),
                              ),
                            ),
                          ],
                        ),
                        // SvgPicture.asset("assets/icons/pencil.svg"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 327,
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffFF8700),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const Gap(15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffff9f33),
                              ),
                              child: Center(
                                child:
                                    SvgPicture.asset("assets/icons/medal.svg"),
                              ),
                            ),
                            const Gap(10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Premium Member",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "New movies are coming for you,\nDownload Now!",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xffffe5c8),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 327,
                  height: 205,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0xff232533),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text(
                              "Account",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Gap(20),
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xff252836),
                            child: Icon(
                              Icons.person,
                              color: Color(0xff12CDD9),
                              size: 25,
                            ),
                          ),
                          const Gap(15),
                          const Text(
                            "Member",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const Gap(130),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff12CDD9),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      const Gap(5),
                      const Divider(
                        color: Color(0xff232533),
                        indent: 35,
                        endIndent: 30,
                      ),
                      const Gap(5),
                      Row(
                        children: [
                          const Gap(20),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xff252836),
                            child: SvgPicture.asset("assets/icons/block.svg"),
                          ),
                          const Gap(15),
                          const Text(
                            "Change Password",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const Gap(60),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff12CDD9),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 327,
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0xff232533),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text(
                              "General",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Gap(20),
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xff252836),
                            child: Icon(
                              Icons.notifications,
                              color: Color(0xff92929d),
                              size: 25,
                            ),
                          ),
                          const Gap(15),
                          const Text(
                            "Notification",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const Gap(105),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff12CDD9),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      const Gap(5),
                      const Divider(
                        color: Color(0xff232533),
                        indent: 35,
                        endIndent: 30,
                      ),
                      const Gap(5),
                      Row(
                        children: [
                          const Gap(20),
                          const CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xff252836),
                            child: Icon(
                              Icons.language,
                              color: Color(0xff92929d),
                            ),
                          ),
                          const Gap(15),
                          const Text(
                            "Language",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const Gap(116),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff12CDD9),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      const Gap(5),
                      const Divider(
                        color: Color(0xff232533),
                        indent: 35,
                        endIndent: 30,
                      ),
                      const Gap(5),
                      Row(
                        children: [
                          const Gap(20),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xff252836),
                            child: SvgPicture.asset("assets/icons/flag.svg"),
                          ),
                          const Gap(15),
                          const Text(
                            "Country",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const Gap(130),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff12CDD9),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      const Gap(5),
                      const Divider(
                        color: Color(0xff232533),
                        indent: 35,
                        endIndent: 30,
                      ),
                      const Gap(5),
                      Row(
                        children: [
                          const Gap(20),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xff252836),
                            child: SvgPicture.asset(
                                "assets/icons/delete_icon.svg"),
                          ),
                          const Gap(15),
                          const Text(
                            "Clear Cache",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const Gap(102),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff12CDD9),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 327,
                  height: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0xff232533),
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Text(
                              "More",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          const Gap(20),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xff252836),
                            child: SvgPicture.asset("assets/icons/qalqon.svg"),
                          ),
                          const Gap(15),
                          const Text(
                            "Legal and Policies",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const Gap(56),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff12CDD9),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      const Gap(5),
                      const Divider(
                        color: Color(0xff232533),
                        indent: 35,
                        endIndent: 30,
                      ),
                      const Gap(5),
                      Row(
                        children: [
                          const Gap(20),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xff252836),
                            child: SvgPicture.asset("assets/icons/savol.svg"),
                          ),
                          const Gap(15),
                          const Text(
                            "Help & Feedback",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const Gap(65),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff12CDD9),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      const Gap(5),
                      const Divider(
                        color: Color(0xff232533),
                        indent: 35,
                        endIndent: 30,
                      ),
                      const Gap(5),
                      Row(
                        children: [
                          const Gap(20),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xff252836),
                            child: SvgPicture.asset("assets/icons/undov.svg"),
                          ),
                          const Gap(15),
                          const Text(
                            "About Us",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const Gap(120),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff12CDD9),
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 327,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color(0xff12CDD9),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xff12CDD9),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Gap(40),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const HomePage()));
              },
              icon: const Icon(
                Icons.home,
                color: Color(0xff92929D),
                size: 25,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const SearchPage()));
              },
              icon: const Icon(
                Icons.search,
                color: Color(0xff92929D),
                size: 26,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const DownloadPage()));
              },
              icon: const Icon(
                Icons.file_download_outlined,
                color: Color(0xff92929D),
                size: 26,
              ),
            ),
            Container(
              width: 98,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff252836),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xff12CDD9),
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xff12CDD9),
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
