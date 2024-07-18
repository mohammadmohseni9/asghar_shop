import 'package:asghar_shop/common/constance.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'سوپری اصغر',
      theme: ThemeData(
        fontFamily: "Gilroy",
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
        useMaterial3: false,
      ),
      home: Container(),
    );
  }
}
