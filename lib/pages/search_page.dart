import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:imtihon/pages/download.dart';
import 'package:imtihon/pages/home_page.dart';
import 'package:imtihon/pages/movie_detail.dart';
import 'package:imtihon/pages/profile_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1d2b),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(30),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 48,
                ),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xff252836),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(25),
                      gapPadding: 10,
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                      color: Color(0xff92929D),
                    ),
                    hintText: "Type title, categories, years, etc",
                    hintStyle: const TextStyle(
                      fontFamily: "Montserrat",
                      color: Color(0xff92929D),
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Gap(10),
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
            const Gap(10),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Gap(10),
                  Text(
                    "Today",
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
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                children: [
                  const Gap(6),
                  Container(
                    width: 112,
                    height: 147,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.amber,
                      image: const DecorationImage(
                        image: AssetImage("assets/images/spiderman.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          width: 55,
                          height: 24,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0x80253845),
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                  const Gap(15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 65,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: const Color(0xffFF8700),
                        ),
                        child: const Center(
                          child: Text(
                            "Premium",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 9.5,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Gap(9),
                      const Text(
                        "Spider-Man No Way..",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      const Gap(9),
                      const Row(
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            size: 20,
                            color: Color(0xff92929D),
                          ),
                          Gap(5),
                          Text(
                            "2021",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xff92929D),
                            ),
                          )
                        ],
                      ),
                      const Gap(9),
                      Row(
                        children: [
                          const Icon(
                            Icons.access_time_filled_outlined,
                            size: 20,
                            color: Color(0xff92929D),
                          ),
                          const Gap(5),
                          const Text(
                            "148 Minutes",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xff92929D),
                            ),
                          ),
                          const Gap(15),
                          Container(
                            width: 43,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: const Color(0xff12CDD9),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "PG-13",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff12CDD9),
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(9),
                      const Row(
                        children: [
                          Icon(
                            Icons.local_movies,
                            size: 18,
                            color: Color(0xff92929D),
                          ),
                          Gap(5),
                          Text(
                            "Action  | ",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xff92929D),
                            ),
                          ),
                          Text(
                            " Movie",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommend for you",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color(0xff12CDD9),
                      fontSize: 16,
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
                    const Gap(10),
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
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (builder) =>
                                          const MovieDetailPage()));
                                },
                                child: Container(
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (builder) =>
                                          const MovieDetailPage()));
                                },
                                child: Container(
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
                                          "assets/images/pining.png"),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (builder) =>
                                          const MovieDetailPage()));
                                },
                                child: Container(
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (builder) =>
                                          const MovieDetailPage()));
                                },
                                child: Container(
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                    Icons.search,
                    color: Color(0xff12CDD9),
                  ),
                  Text(
                    "Search",
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
