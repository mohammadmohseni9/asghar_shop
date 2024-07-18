import 'package:asghar_shop/common/constance.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    var mediaSize = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Stack(
        children: [
          Image.asset(
            "",
            width: mediaSize.width,
            height: mediaSize.height,
          ),
        ],
      ),
    );
  }
}
