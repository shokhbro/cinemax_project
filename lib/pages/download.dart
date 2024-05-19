import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:imtihon/pages/home_page.dart';
import 'package:imtihon/pages/profile_page.dart';
import 'package:imtihon/pages/search_page.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1d2b),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff1f1d2b),
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop(const SearchPage());
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
          "Download",
          style: TextStyle(
            fontFamily: "Montserrat",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: Column(
        children: [
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 327,
                height: 107,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff252836),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/spiderman_download.png"),
                            fit: BoxFit.cover,
                            opacity: 0.2,
                          ),
                          color: Colors.black.withOpacity(0.9),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/downloading.png",
                            width: 48,
                            height: 48,
                          ),
                        ),
                      ),
                      const Gap(10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Action",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Color(0xff92929D),
                              fontSize: 11,
                            ),
                          ),
                          Gap(5),
                          Text(
                            "Spider-Man No Way\nHome",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Color(0xffEBEBEF),
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(13),
                          Row(
                            children: [
                              Icon(
                                Icons.file_download_outlined,
                                color: Color(0xff92929D),
                                size: 17,
                              ),
                              Gap(5),
                              Text(
                                "1.25 of 1.78 GB  |  75%",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Color(0xff92929D),
                                  fontSize: 11,
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
          const Gap(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 327,
                height: 107,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xff252836),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/spiderman_download.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Gap(10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Action",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Color(0xff92929D),
                              fontSize: 11,
                            ),
                          ),
                          Gap(5),
                          Text(
                            "Spider-Man No Way\nHome",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              color: Color(0xffEBEBEF),
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(13),
                          Row(
                            children: [
                              Text(
                                "Movie  |  1.78 GB",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  color: Color(0xff92929D),
                                  fontSize: 12,
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
        ],
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
            Container(
              width: 116,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff252836),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.file_download_outlined,
                    color: Color(0xff12CDD9),
                  ),
                  Text(
                    "Download",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xff12CDD9),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const ProfilePage()));
              },
              icon: const Icon(
                Icons.person,
                color: Color(0xff92929D),
                size: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}