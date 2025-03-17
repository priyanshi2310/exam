import 'package:exam/view/getx/home.dart';
import 'package:exam/view/sign_in/sign_in_screen.dart';
import 'package:exam/view/sign_in/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: '/HomeScreen',
      // getPages: [GetPage(name: '/HomeScreen', page: () => HomeScreen())],
      debugShowCheckedModeBanner: false,

      home: const HomeScreen(),
      initialRoute: 'SigninScreen',
      routes: {
        'SignUpScreen': (context) => const SignUpScreen(),
        'SigninScreen': (context) => const SigninScreen(),
        'HomeScreen': (context) => const HomeScreen(),
      },
    );
  }
}
