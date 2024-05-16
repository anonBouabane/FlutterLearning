import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopgood/compunent/data.dart';
import 'package:shopgood/compunent/product.dart';
import 'package:shopgood/proverder/category_provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: const Text(
            "Home",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: const [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
              child: Icon(
                Icons.person,
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15,
                child: Icon(
                  Icons.notification_important_rounded,
                  color: Colors.amber,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          hintText: "search...",
                          border: InputBorder.none,
                          suffixIcon: Icon(Icons.search)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.apps,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 400)),
              items: model.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: const BoxDecoration(color: Colors.amber),
                        child: Image.asset(
                          i,
                          fit: BoxFit.cover,
                        ));
                  },
                );
              }).toList(),
            ),
            Consumer<CategoryProvider>(
              builder: (context, value, child) {
                return SizedBox(
                  height: 50,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: category.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            value.chagecategory(index);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: value.currentIndex == index
                                    ? Colors.amber
                                    : const Color.fromARGB(255, 12, 125, 182)),
                            width: 100,
                            height: 50,
                            margin: const EdgeInsets.all(8.0),
                            child: Center(
                                child: Text(
                              category[index],
                              style: const TextStyle(color: Colors.white),
                            )),
                          ),
                        );
                      }),
                );
              },
            ),
            const Row(
              children: [
                Text(
                  'Product',
                  style:
                      TextStyle(color: Colors.deepPurpleAccent, fontSize: 26),
                ),
                Spacer(),
                Icon(Icons.ac_unit),
              ],
            ),
            const ProductScreen()
          ],
        )),
      ),
    );
  }

  List<String> model = [
    "assets/images/picture.png",
    "assets/images/picture01.png",
    "assets/images/picture02.png"
  ];

  int curRentIndex = 0;

  ontap(index) {
    setState(() {
      curRentIndex = index;
    });
  }
}
