import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:imtihon/pages/home_page.dart';

class PopularMoviePage extends StatefulWidget {
  const PopularMoviePage({super.key});

  @override
  State<PopularMoviePage> createState() => _PopularmovieState();
}

class _PopularmovieState extends State<PopularMoviePage> {
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
                Navigator.of(context).pop(const HomePage());
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
          "Most Popular Movie",
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
                        image: AssetImage(
                            "assets/images/riveldale_background.png"),
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
                          color: const Color(0xff12CDD9),
                        ),
                        child: const Center(
                          child: Text(
                            "Free",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Gap(9),
                      const Text(
                        "Riverdale",
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
                            "2022",
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
                            "190 Minutes",
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
                        image: AssetImage("assets/images/pining.png"),
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
                        "Life of PI",
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
                            "2020",
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
                            "235 Minutes",
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
                        image: AssetImage("assets/images/magic_show.png"),
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
                        "Movie Dotcase",
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
                            "2017",
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
                            "106 Minutes",
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
                        image: AssetImage("assets/images/black_widow.png"),
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
                          color: const Color(0xff12CDD9),
                        ),
                        child: const Center(
                          child: Text(
                            "Free",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Gap(9),
                      const Text(
                        "Black Widow",
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
                            "2019",
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
                            "126 Minutes",
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
                        image: AssetImage("assets/images/black_pather.png"),
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
                          color: const Color(0xff12CDD9),
                        ),
                        child: const Center(
                          child: Text(
                            "Free",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Gap(9),
                      const Text(
                        "Black Pather",
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
                            "2023",
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
                            "210 Minutes",
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
                        image: AssetImage("assets/images/forsaj.png"),
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
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Gap(9),
                      const Text(
                        "Fast Furious 10",
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
                            "2023",
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
                            "210 Minutes",
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
          ],
        ),
      ),
    );
  }
}