import 'package:asghar_shop/common_widget/rounded_butten.dart';
import 'package:asghar_shop/view/login/sign_in_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomView extends StatefulWidget {
  const WelcomView({super.key});

  @override
  State<WelcomView> createState() => _WelcomViewState();
}

class _WelcomViewState extends State<WelcomView> {
  @override
  void initState() {
    super.initState();
    //برای از بین بردن نوار ابزار بالای صفحه
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.4), // Adjust darkness as needed
              BlendMode.srcATop,
            ),
            child: Image.asset(
              "assets/images/first.jpg",
              width: media.width,
              height: media.height,
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  "assets/images/app_logo.png",
                  width: 60,
                  height: 60,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("به فروشگاه اصغر\n خوش آمدید",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("سفارش دهید و درب منزل تحویل بگیرید",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RoundedButten(
                      title: "شروع برنامه",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignInView()));
                      }),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
