import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                      decoration:   BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.apps,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
