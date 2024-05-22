import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopgood/proverder/authprovider.dart';
import 'package:shopgood/view/auth/login.dart';
import 'package:shopgood/proverder/category_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CategoryProvider()),
      ChangeNotifierProvider(create: (_) => AuthProvider())
    ],
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
      home: const LogInscreen(),
      theme: ThemeData(fontFamily: "notosanlao.ttf"),
    );
  }
}
