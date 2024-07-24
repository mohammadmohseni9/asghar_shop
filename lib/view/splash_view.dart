import 'package:asghar_shop/common/constance.dart';
import 'package:asghar_shop/view/login/welcome_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override

/* متد اینیت استیت
اولین متدی که به صورت خودکار اجرا می شود بعد از بیلد 
*/
  void initState() {
    super.initState();
    firstOpenApp();
  }

  void firstOpenApp() async {
    await Future.delayed(const Duration(seconds: 3));
    start();
  }

  void start() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const WelcomView()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaSize = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/splash_logo.png",
              width: mediaSize.width * 0.7,
              //height: mediaSize.height,
              //fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
