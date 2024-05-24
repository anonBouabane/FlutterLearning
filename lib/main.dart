import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:no_context_navigation/no_context_navigation.dart';
import 'package:provider/provider.dart';
import 'package:shopgood/proverder/authprovider.dart';
import 'package:shopgood/router/route.dart';
import 'package:shopgood/proverder/category_provider.dart';
import 'package:shopgood/view/auth/splashScreen.dart';
import 'package:shopgood/view/compunent/hive_database.dart';
import 'package:shopgood/view/compunent/message.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await HiveDatabase().hiveDatabase();
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
      home: const SplashScreen(),
      theme: ThemeData(fontFamily: "notosanlao.ttf"),
      navigatorKey: NavigationService.navigationKey,
      scaffoldMessengerKey: MessageHelper.key,
      onGenerateRoute: RouteAPI.generateRoutes,
    );
  }
}
