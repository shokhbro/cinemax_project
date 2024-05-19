import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:imtihon/pages/download.dart';
import 'package:imtihon/pages/search_page.dart';
import 'package:imtihon/pages/share.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({super.key});

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1d2b),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage("assets/images/riveldale_background.png"),
                      fit: BoxFit.cover,
                      opacity: 0.5,
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 200,
                  right: 88,
                  child: Container(
                    width: 190,
                    height: 277,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage(
                            "assets/images/riveldale_background.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Gap(50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pop(const SearchPage());
                          },
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                        const Text(
                          "Riverdale",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: const Color(0xff242634),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.favorite_outlined,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Positioned(
                  bottom: 160,
                  right: 52,
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        size: 16,
                        color: Color(0xff92929D),
                      ),
                      Gap(5),
                      Text(
                        "2021   |  ",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          color: Color(0xff92929D),
                        ),
                      ),
                      Icon(
                        Icons.access_time_filled_outlined,
                        size: 16,
                        color: Color(0xff92929D),
                      ),
                      Gap(5),
                      Text(
                        "148 Minutes   |  ",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          color: Color(0xff92929D),
                        ),
                      ),
                      Icon(
                        Icons.local_movies,
                        size: 16,
                        color: Color(0xff92929D),
                      ),
                      Gap(5),
                      Text(
                        "Action",
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          color: Color(0xff92929D),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 120,
                  right: 155,
                  child: Container(
                    width: 55,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff1f1d2b),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xffFF8700),
                          size: 17,
                        ),
                        Gap(3),
                        Text(
                          "4.5",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Color(0xffFF8700),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  right: 70,
                  child: Row(
                    children: [
                      Container(
                        width: 115,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xff12CDD9),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                            Text(
                              "Trailer",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(15),
                      CircleAvatar(
                        backgroundColor: const Color(0xff252836),
                        radius: 24,
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (builder) => const DownloadPage()));
                            },
                            child:
                                SvgPicture.asset("assets/icons/download.svg")),
                      ),
                      const Gap(15),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const SharePage()));
                        },
                        child: CircleAvatar(
                          backgroundColor: const Color(0xff252836),
                          radius: 24,
                          child: SvgPicture.asset("assets/icons/share.svg"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Gap(10),
                Row(
                  children: [
                    Gap(15),
                    Text(
                      "Story Line",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Gap(10),
                Row(
                  children: [
                    Gap(15),
                    Text(
                      "Originally a story from Archie Comics which\nstarted in 1941, Riverdale centres around a\ngroup of high school students who are\nshocked by the death of classmate, Jason\nBlossom. Together theyunravel the secrets of",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xffEBEBEF),
                        fontSize: 13.5,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Gap(15),
                    Text(
                      "Riverdale and who",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xffEBEBEF),
                        fontSize: 13.5,
                      ),
                    ),
                    Text(
                      "  More",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xff12CDD9),
                        fontSize: 13.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Gap(20),
            const Row(
              children: [
                Gap(15),
                Text(
                  "Cast and Crew",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Gap(15),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Gap(15),
                  CircleAvatar(
                    radius: 20.5,
                    backgroundImage:
                        AssetImage("assets/images/profile_image.png"),
                  ),
                  Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jon Watts",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Directors",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Color(0xff92929D),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Gap(15),
                  CircleAvatar(
                    radius: 20.5,
                    backgroundImage: AssetImage("assets/images/john.png"),
                  ),
                  Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Chris McKenna",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Writers",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Color(0xff92929D),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Gap(15),
                  CircleAvatar(
                    radius: 20.5,
                    backgroundImage: AssetImage("assets/images/ali.png"),
                  ),
                  Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ali ibn Mizrob",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Flutter Developer",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Color(0xff92929D),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Gap(15),
                  CircleAvatar(
                    radius: 20.5,
                    backgroundImage: AssetImage("assets/images/daniel.png"),
                  ),
                  Gap(10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Zubayr ibn Tohir",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Web Developer",
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Color(0xff92929D),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Gap(20),
                ],
              ),
            ),
            const Gap(30),
            const Row(
              children: [
                Gap(15),
                Text(
                  "Episode",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Gap(15),
                const Text(
                  "Season 2",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 327,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff252836),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              width: 121,
                              height: 83,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/reverdale_films.png"),
                                  fit: BoxFit.cover,
                                  opacity: 0.7,
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/play.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            const Gap(15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 65,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xffFF8700),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Premium",
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                                const Gap(5),
                                const Text(
                                  "1h30m",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xff92929D),
                                    fontSize: 11,
                                  ),
                                ),
                                const Gap(7),
                                const Text(
                                  "Episode 1",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const Gap(45),
                            const CircleAvatar(
                              backgroundColor: Color(0xff1F1D2B),
                              radius: 25,
                              child: Icon(
                                Icons.file_download_outlined,
                                color: Color(0xffFF8700),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          Gap(12),
                          Text(
                            "Football player who longs to write his\nown music. It’s not all smiles for this\nhunk though after he gets involved\nwith his music teacher.",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xffEBEBEF),
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ],
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
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff252836),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              width: 121,
                              height: 83,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/reverdale_films.png"),
                                  fit: BoxFit.cover,
                                  opacity: 0.7,
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/play.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            const Gap(15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 65,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xffFF8700),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Premium",
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                                const Gap(5),
                                const Text(
                                  "1h30m",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xff92929D),
                                    fontSize: 11,
                                  ),
                                ),
                                const Gap(7),
                                const Text(
                                  "Episode 2",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const Gap(43),
                            const CircleAvatar(
                              backgroundColor: Color(0xff1F1D2B),
                              radius: 25,
                              child: Icon(
                                Icons.file_download_outlined,
                                color: Color(0xffFF8700),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          Gap(12),
                          Text(
                            "Football player who longs to write his\nown music. It’s not all smiles for this\nhunk though after he gets involved\nwith his music teacher.",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xffEBEBEF),
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ],
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
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xff252836),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Container(
                              width: 121,
                              height: 83,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/reverdale_films.png"),
                                  fit: BoxFit.cover,
                                  opacity: 0.7,
                                ),
                              ),
                              child: Center(
                                child: Image.asset(
                                  "assets/images/play.png",
                                  width: 50,
                                  height: 50,
                                ),
                              ),
                            ),
                            const Gap(15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 65,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xffFF8700),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Premium",
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                                const Gap(5),
                                const Text(
                                  "2h10m",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xff92929D),
                                    fontSize: 11,
                                  ),
                                ),
                                const Gap(7),
                                const Text(
                                  "Episode 3",
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const Gap(43),
                            const CircleAvatar(
                              backgroundColor: Color(0xff1F1D2B),
                              radius: 25,
                              child: Icon(
                                Icons.file_download_outlined,
                                color: Color(0xffFF8700),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          Gap(12),
                          Text(
                            "Football player who longs to write his\nown music. It’s not all smiles for this\nhunk though after he gets involved\nwith his music teacher.",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Color(0xffEBEBEF),
                              fontSize: 13,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
