import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:imtihon/pages/download.dart';
import 'package:imtihon/pages/popular_movie.dart';
import 'package:imtihon/pages/profile_page.dart';
import 'package:imtihon/pages/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1d2b),
      appBar: AppBar(
        backgroundColor: const Color(0xff1f1d2b),
        leading: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile_image.png"),
            ),
          ],
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Smith",
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Let's stream your favorite movie",
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Color(0xff92929D),
                fontSize: 12,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: const Color(0xff242634),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Icon(
                  Icons.favorite_outlined,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 50,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: const Color(0xff252836),
                    filled: true,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                      color: Color(0xff92929D),
                    ),
                    suffixIcon: Image.asset(
                      "assets/images/setting.png",
                      cacheWidth: 18,
                      cacheHeight: 18,
                    ),
                    hintText: "Seach a title..",
                    hintStyle: const TextStyle(
                      fontFamily: "Montserrat",
                      color: Color(0xff92929D),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            const Gap(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 295,
                        height: 138,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.amber,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/spiderman.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(15),
                  Stack(
                    children: [
                      Container(
                        width: 295,
                        height: 154,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.amber,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/black_pather.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Black Panther: Wakanda\nForever",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                "On March 2, 2022",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(15),
                  Stack(
                    children: [
                      Container(
                        width: 295,
                        height: 138,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.amber,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/ipman.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xff15606d),
                  radius: 5,
                ),
                const Gap(10),
                Container(
                  width: 32,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff12CDD9),
                  ),
                ),
                const Gap(10),
                const CircleAvatar(
                  backgroundColor: Color(0xff15606d),
                  radius: 5,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Gap(20),
                    Container(
                      width: 80,
                      height: 31,
                      decoration: BoxDecoration(
                        color: const Color(0xff252836),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          "All",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color(0xff12CDD9),
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                    const Gap(20),
                    const Text(
                      "Categories",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xffEBEBEF),
                        fontSize: 13,
                      ),
                    ),
                    const Gap(20),
                    const Text(
                      "Animation",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xffEBEBEF),
                        fontSize: 13,
                      ),
                    ),
                    const Gap(20),
                    const Text(
                      "Dokument",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xffEBEBEF),
                        fontSize: 13,
                      ),
                    ),
                    const Gap(20),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Most popular",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => const PopularMoviePage()));
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xff12CDD9),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Gap(15),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff252836),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 135,
                                height: 178,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  color: Colors.amber,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/spiderman.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      width: 55,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0x80253839),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFF8700),
                                            size: 18,
                                          ),
                                          Gap(5),
                                          Text(
                                            "4.5",
                                            style: TextStyle(
                                              color: Color(0xffFF8700),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(13),
                              const Row(
                                children: [
                                  Gap(10),
                                  Text(
                                    "Spider-Man No..",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(3),
                              const Row(
                                children: [
                                  Gap(10),
                                  Text(
                                    "Action",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xff92929D),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(10),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Gap(15),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff252836),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 135,
                                height: 178,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  color: Colors.amber,
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/pining.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      width: 55,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0x80253839),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFF8700),
                                            size: 18,
                                          ),
                                          Gap(5),
                                          Text(
                                            "4.5",
                                            style: TextStyle(
                                              color: Color(0xffFF8700),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(13),
                              const Row(
                                children: [
                                  Gap(10),
                                  Text(
                                    "Pining Hayoti",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(3),
                              const Row(
                                children: [
                                  Gap(10),
                                  Text(
                                    "Action",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xff92929D),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(10),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Gap(15),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff252836),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 135,
                                height: 178,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  color: Colors.amber,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/riveldale.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      width: 55,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0x80253839),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFF8700),
                                            size: 18,
                                          ),
                                          Gap(5),
                                          Text(
                                            "4.5",
                                            style: TextStyle(
                                              color: Color(0xffFF8700),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(13),
                              const Row(
                                children: [
                                  Gap(10),
                                  Text(
                                    "Riveldale",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(3),
                              const Row(
                                children: [
                                  Gap(10),
                                  Text(
                                    "Action",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xff92929D),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(10),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Gap(15),
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff252836),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 135,
                                height: 178,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  color: Colors.amber,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/black_widow.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Container(
                                      width: 55,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0x80253839),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Color(0xffFF8700),
                                            size: 18,
                                          ),
                                          Gap(5),
                                          Text(
                                            "4.5",
                                            style: TextStyle(
                                              color: Color(0xffFF8700),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Gap(13),
                              const Row(
                                children: [
                                  Gap(10),
                                  Text(
                                    "Black Widow",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(3),
                              const Row(
                                children: [
                                  Gap(10),
                                  Text(
                                    "Action",
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xff92929D),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(10),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Gap(15),
                  ],
                ),
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 65,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 90,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff252836),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.home,
                    color: Color(0xff12CDD9),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xff12CDD9),
                      fontSize: 12.5,
                    ),
                  )
                ],
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
                size: 25,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => const DownloadPage()));
              },
              icon: const Icon(
                Icons.download_outlined,
                color: Color(0xff92929D),
                size: 26,
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
