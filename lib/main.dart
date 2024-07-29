import 'package:asghar_shop/common/constance.dart';
import 'package:flutter/material.dart';

import 'view/maintab/main_tabview.dart';

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
      title: 'اصغر شاب',
      theme: ThemeData(
        fontFamily: "anjoman",
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primary),
        useMaterial3: false,
      ),
      home: const MainTabview(),
    );
  }
}
