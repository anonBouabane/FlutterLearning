import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopgood/compunent/data.dart';
import 'package:shopgood/home/widget/detailWidget.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                height: 50,
                width: 100,
                child: SvgPicture.asset("assets/images/cart-shopping-fast.svg"),
              ),
              const Spacer(),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SvgPicture.asset("assets/images/wallet.svg"),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const DetailItemScreen(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 300),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Broke',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                  Text(
                                    '1.2 KM Away',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              Spacer(),
                              Text(
                                '120.000 KIP',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: category.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () => ontap(index),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: currentindex == index
                                            ? Colors.amber
                                            : Colors.blue),
                                    width: 100,
                                    child: Center(
                                      child: Text(
                                        category[index],
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset(
                              'assets/images/car.svg',
                              height: 25,
                              color: Colors.red,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              'ລາຍລະອຽດການຈັດຊື້',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "นช่วงปีที่ผ่านมา จากการระบาดของโควิด-19 ทำให้การทำธุรกิจมีการเปลี่ยนแปลงไปอย่างมาก หลายๆ ธุรกิจอาจจะกำลังขยายตัว เช่นธุรกิจขนส่ง ธุรกิจ Food Delivery ธุรกิจด้านยา เวชภัณฑ์ และในขณะเดียวกัน อีกหลาย ๆ ธุรกิจก็กำลังอิ่มตัวเช่นเดียวกัน เช่น ธุรกิจร้านอาหารบางประเภท แต่อย่างไรก็ตามธุรกิจก็ต้องดำเนินต่อไป ทำให้ทั้งผู้บริหารและพนักงานต้องใช้ความพยายามในการปิดการขายเพิ่มมากขึ้น เพื่อให้ธุรกิจมีรายได้และสามารถอยู่รอดต่อไปได้ ดังนั้นธุรกิจจึงต้องมีวิธีการขายแบบใหม่ ๆ การจัดการงานขายที่มีประสิทธิภาพมากขึ้นเพื่อสร้างโอกาสในการขาย ลดต้นทุนการบริหารที่ไม่จำเป็น และสร้างความแตกต่างจากคู่แข่งให้ได้มากที่สุด ซึ่งการจะมองหาสิ่งที่จะช่วยสร้างความแตกต่าง และหาจุดอ่อนของการขาย ธุรกิจ เราจะต้องทำความรู้จักกระบวนการขายให้ดีก่อนเพื่อจะได้สามารถปรับหรือวางแผนการทำงานได้อย่างตรงประเด็น",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  int currentindex = 0;
  ontap(index) {
    setState(() {
      currentindex = index;
    });
  }
}
