import 'package:an_flutter_10/class_image/image.dart';
import 'package:flutter/material.dart';

class Bai3 extends StatefulWidget {
  const Bai3({super.key});

  @override
  State<Bai3> createState() => _Bai3State();
}

class _Bai3State extends State<Bai3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My cart",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 490,
              margin: const EdgeInsets.only(top: 15, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Add more products to your cart!"),
                  const SizedBox(
                    height: 15,
                    width: double.infinity,
                  ),

                  /// widget search
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                          color: Color(0x00000032),
                        ),
                      ),
                      fillColor: Colors.grey[100],
                      filled: true,
                    ),
                    style: const TextStyle(fontSize: 13),
                  ),
                  const SizedBox(
                    height: 25,
                    width: double.infinity,
                  ),

                  /// widget products
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xFFBDBDBD)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.only(
                              top: 5, left: 2, bottom: 5, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage(image.shoes1),
                              )),
                        ),
                        SizedBox(
                          width: 200,
                          height: 90,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Nike React Miler",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "170.00",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 150,
                                child: Row(
                                  children: [
                                    const Text(
                                      "-",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                          color: const Color(0xFFBDBDBD),
                                        ),
                                      ),
                                      child: const Center(
                                          child: Text(
                                        "1",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      )),
                                    ),
                                    const Text(
                                      "+",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                    width: double.infinity,
                  ),
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: const Color(0xFFBDBDBD)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.only(
                              top: 5, left: 2, bottom: 5, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage(image.shoes2),
                              )),
                        ),
                        SizedBox(
                          height: 100,
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Nike Air Max 270",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "112.00",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 150,
                                child: Row(
                                  children: [
                                    const Text(
                                      "-",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                          color: const Color(0xFFBDBDBD),
                                        ),
                                      ),
                                      child: const Center(
                                          child: Text(
                                        "1",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      )),
                                    ),
                                    const Text(
                                      "+",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                    width: double.infinity,
                  ),

                  /// widget apply voucher
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: const Text(
                              "Enter your voucher",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          width: 80,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: const Text(
                            "Apply",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                    width: double.infinity,
                  ),

                  /// widget total bill
                  const SizedBox(
                    height: 20,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "In total",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "282.00",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                    width: double.infinity,
                  ),

                  /// widget big button
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.orange[800],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        "Checkout",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 14,
              width: double.infinity,
            ),

            /// widget shop, heart, account
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange[800],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 20,
                      child: Image(
                        image: AssetImage(image.iconHouse),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 20,
                      child: Image(
                        image: AssetImage(image.heart),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 20,
                      child: Image(
                        image: AssetImage(image.shop),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Bai3Screen2()),
                          );
                        },
                        child: const Image(
                          image: AssetImage(image.account),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Bai3Screen2 extends StatefulWidget {
  const Bai3Screen2({super.key});

  @override
  State<Bai3Screen2> createState() => _Bai3Screen2State();
}

class _Bai3Screen2State extends State<Bai3Screen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Account",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 25, left: 10, right: 10),
              height: 490,
              width: double.infinity,
              child: Column(
                children: [

                  ///widget avatar
                  Container(
                    height: 90,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage(image.human),
                                fit: BoxFit.fill,
                              )),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 90,
                          width: 130,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Adji Rahadian",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: const Color(0x13210312)),
                                ),
                                child: Text(
                                  "Edit Account",
                                  style: TextStyle(
                                      color: Colors.grey[400], fontSize: 13),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5,),

                  ///widget container pay,ship...
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xfffbdbdbd),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Container(
                        margin:
                            const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "My purchases",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "View Purchase History >",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0x13023402),
                                  ),
                                  bottom: BorderSide(
                                    color: Color(0x13023402),
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 30,
                                          margin: const EdgeInsets.only(bottom: 5),
                                          child: const Image(
                                            image: AssetImage(image.wallet),
                                          ),
                                        ),
                                        Text(
                                          "To Pay",
                                          style: TextStyle(
                                              fontSize: 6,
                                              color: Colors.grey[400]),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 30,
                                          margin: const EdgeInsets.only(bottom: 5),
                                          child: const Image(
                                            image: AssetImage(image.package),
                                          ),
                                        ),
                                        Text(
                                          "To Ship",
                                          style: TextStyle(
                                              fontSize: 6,
                                              color: Colors.grey[400]),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 30,
                                          margin: const EdgeInsets.only(bottom: 5),
                                          child: const Image(
                                            image: AssetImage(image.car),
                                          ),
                                        ),
                                        Text(
                                          "To Receive",
                                          style: TextStyle(
                                              fontSize: 6,
                                              color: Colors.grey[400]),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    width: 50,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 30,
                                          margin: const EdgeInsets.only(bottom: 5),
                                          child: const Image(
                                            image: AssetImage(image.star),
                                          ),
                                        ),
                                        Text(
                                          "To Rate",
                                          style: TextStyle(
                                              fontSize: 6,
                                              color: Colors.grey[400]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Digital purchases",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "View my top-up >",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10,),


                  ///widget container coins, voucher
                  Container(
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xfffbdbdbd),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                      child: Container(
                        margin:
                            const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 3, right: 8),
                                  height: 18,
                                  width: 18,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(image.miniwallet),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "My purchases",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 6),
                              decoration: const BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Color(0x13023402),
                                  ),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 80,
                                    width: 55,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 30,
                                          margin: const EdgeInsets.only(bottom: 7, top: 25),
                                          child: const Image(
                                            image: AssetImage(image.money),
                                          ),
                                        ),
                                        Text(
                                          "Shopee Pay",
                                          style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.grey[400]),
                                        ),
                                        Text("Rp.4.982.000", style: TextStyle(color: Colors.orange[800], fontSize: 8),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 80,
                                    width: 55,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 30,
                                          margin: const EdgeInsets.only(bottom: 7, top: 25),
                                          child: const Image(
                                            image: AssetImage(image.coin),
                                          ),
                                        ),
                                        Text(
                                          "Shopee Coins",
                                          style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.grey[400]),
                                        ),
                                        Text("928.300 Koin", style: TextStyle(color: Colors.orange[800], fontSize: 8),)

                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 80,
                                    width: 55,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 30,
                                          margin: const EdgeInsets.only(bottom: 7, top: 25),
                                          child: const Image(
                                            image: AssetImage(image.transfer),
                                          ),
                                        ),
                                        Text(
                                          "SPayLater",
                                          style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.grey[400]),
                                        ),
                                        Text("Rp.10.620.912", style: TextStyle(color: Colors.orange[800], fontSize: 8),)
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 80,
                                    width: 55,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 25,
                                          width: 30,
                                          margin: const EdgeInsets.only(bottom: 7, top: 25),
                                          child: const Image(
                                            image: AssetImage(image.voucher),
                                          ),
                                        ),
                                        Text(
                                          "My Voucher",
                                          style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.grey[400]),
                                        ),
                                        Text("92 Voucher", style: TextStyle(color: Colors.orange[800], fontSize: 8),)
                                      ],
                                    ),
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
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.orange[800],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 20,
                      width: 20,
                      child: Image(
                        image: AssetImage(image.iconHouse),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 20,
                      child: Image(
                        image: AssetImage(image.heart),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Bai3()),
                          );
                        },

                        child: const Image(
                          image: AssetImage(image.shop),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 20,
                      child: Image(
                        image: AssetImage(image.account),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
