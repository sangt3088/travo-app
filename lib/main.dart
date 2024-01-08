import 'package:final_flutter_goods_manager_app/src/page/login_sign_screnn/register.dart';
import 'package:final_flutter_goods_manager_app/src/page/main_screen/cate_screen.dart';
import 'package:flutter/material.dart';

import 'src/page/main_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterScreen(), //Trang này là cái login
              // SlideStartWidget(),//Trang này là tui làm
              // SignInUpButtonScreen(),
              // HomeScreen(),
            ],
          ),
        ),
      ),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/cate': (context) => const CategoriesScreen(),
      },
    );
  }
}
