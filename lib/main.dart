import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopgood/home/home.dart';
import 'package:shopgood/proverder/category_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => CategoryProvider())],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(fontFamily: "notosanlao.ttf"),
    );
  }
}
