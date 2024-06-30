import 'package:an_flutter_10/class_image/Image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Bai2Screen extends StatefulWidget {
  const Bai2Screen({super.key});

  @override
  State<Bai2Screen> createState() => _Bai2ScreenState();
}

class _Bai2ScreenState extends State<Bai2Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ///widget bell
            Container(
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Location",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Row(
                        children: [
                          Text(
                            "Jakarta",
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image.bell),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
              width: double.infinity,
            ),

            ///widget textfield
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 15, right: 5),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search address, or near you",
                        prefixIcon: const Icon(
                          Icons.search,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              color: Color(50),
                            )),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue[400],
                  ),
                  alignment: Alignment.center,
                  child: const Image(
                    height: 20,
                    width: 20,
                    image: AssetImage(image.setting),
                    fit: BoxFit.fill,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 13,
              width: double.infinity,
            ),

            ///widget listview house
            Container(
              height: 30,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15, right: 8),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(7)),
                        child: const Text(
                          "House",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                        ),
                        child: const Text(
                          "Minihouse",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                        ),
                        child: const Text(
                          "Apartment",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                        ),
                        child: const Text(
                          "Hotel",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                        ),
                        child: const Text(
                          "Vila",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                        ),
                        child: const Text(
                          "Penthouse",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
              width: double.infinity,
            ),

            ///widget text near from you
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Near from you",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(color: Colors.grey[400]),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
              width: double.infinity,
            ),

            ///widget listview show house pictures
            Container(
              margin: const EdgeInsets.only(left: 15),
              height: 220,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage(image.house1),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 10,
                        child: Container(
                          height: 15,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[500],
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image: AssetImage(image.location),
                              ),
                              Text(
                                "1.8km",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 15,
                          child: Container(
                            height: 40,
                            width: 120,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dream House",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Hoang An",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage(image.house2),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 20,
                        child: Container(
                          height: 15,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[500],
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image: AssetImage(image.location),
                              ),
                              Text(
                                "2km",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 20,
                          child: Container(
                            height: 40,
                            width: 120,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ricefield House",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Han Han",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 220,
                        width: 170,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage(image.house3),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 10,
                        child: Container(
                          height: 15,
                          width: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey[500],
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image(
                                image: AssetImage(image.location),
                              ),
                              Text(
                                "2.3km",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 15,
                          child: Container(
                            height: 40,
                            width: 120,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lakeview House",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white),
                                ),
                                Text(
                                  "VHoang An",
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
              width: double.infinity,
            ),

            ///widget text best for you
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 25,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Best for you",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "See more",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
              width: double.infinity,
            ),

            ///widget house price
            Expanded(
              child: ListView(
                children: [
                  Container(
                    height: 100,
                    width: 400,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(image.house1),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            height: 100,
                            width: 230,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dream House",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "Rp. 3.000.000/Year",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.blue[400]),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 110,
                                      margin: EdgeInsets.only(right: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(image.bath),
                                                colorFilter: ColorFilter.mode(
                                                    Colors.grey.withOpacity(0.1),
                                                    BlendMode.color),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "2 Bathroom",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 13,
                                            width: 13,
                                            margin: EdgeInsets.only(right: 10),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(image.bed),
                                                colorFilter: ColorFilter.mode(
                                                    Colors.grey.withOpacity(0.1),
                                                    BlendMode.color),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "4 Bedroom",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                                // Row(
                                //
                                // ),

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(image.house1),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            height: 100,
                            width: 230,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lakeside House",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "Rp. 8.000.000/Year",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.blue[400]),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 110,
                                      margin: EdgeInsets.only(right: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(image.bath),
                                                colorFilter: ColorFilter.mode(
                                                    Colors.grey.withOpacity(0.1),
                                                    BlendMode.color),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "3 Bathroom",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 13,
                                            width: 13,
                                            margin: EdgeInsets.only(right: 10),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(image.bed),
                                                colorFilter: ColorFilter.mode(
                                                    Colors.grey.withOpacity(0.1),
                                                    BlendMode.color),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "5 Bedroom",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Center(
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(image.house2),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            height: 100,
                            width: 230,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ricefield House",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "Rp. 5.200.000/Year",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.blue[400]),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 110,
                                      margin: EdgeInsets.only(right: 15),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(right: 10),
                                            height: 15,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(image.bath),
                                                colorFilter: ColorFilter.mode(
                                                    Colors.grey.withOpacity(0.1),
                                                    BlendMode.color),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "1 Bathroom",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 13,
                                            width: 13,
                                            margin: EdgeInsets.only(right: 10),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(image.bed),
                                                colorFilter: ColorFilter.mode(
                                                    Colors.grey.withOpacity(0.1),
                                                    BlendMode.color),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "2 Bedroom",
                                            style: TextStyle(
                                                color: Colors.grey, fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )

                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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
