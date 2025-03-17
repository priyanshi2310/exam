import 'package:exam/view/getx/home.dart';
// import 'package:exam/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/HomeScreen',
      getPages: [GetPage(name: '/HomeScreen', page: () => HomeScreen())],
      debugShowCheckedModeBanner: false,

      home: const HomeScreen(),
      // initialRoute: 'SigninScreen',
      // routes: {
      //   'SigninScreen': (context) => const SigninScreen(),
      //   'SignUpScreen': (context) => const SignUpScreen(),
      //   'HomeScreen':(context) => const HomeScreen(),
      // },
    );
  }
}
