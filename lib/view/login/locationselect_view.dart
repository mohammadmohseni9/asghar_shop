import 'package:asghar_shop/common/constance.dart';
import 'package:asghar_shop/view/login/login_view.dart';
import 'package:flutter/material.dart';

import '../../common_widget/drop_down_botton.dart';
import '../../common_widget/rounded_butten.dart';

class SelectLocationView extends StatefulWidget {
  const SelectLocationView({super.key});

  @override
  State<SelectLocationView> createState() => _SelectLocationViewState();
}

class _SelectLocationViewState extends State<SelectLocationView> {
  TextEditingController txtOTP = TextEditingController();

  final List<String> locations = ['تهران', 'ساری', 'تبریز'];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Image.asset(
              "assets/images/bottom_bg.png",
              width: media.width,
              height: media.height,
              fit: BoxFit.cover,
            ),
          ),
          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Image.asset(
                  "assets/images/back.png",
                  width: 20,
                  height: 20,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/select_location.png",
                    width: media.width * 0.7,
                  ),
                  SizedBox(
                    height: media.height * 0.04,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "مکان خود را انتخاب کنید",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.primaryText,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "از روی نقشه مکان خود را انتخاب کنید",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.secondaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.height * 0.04,
                  ),
                  DropDown(
                    title: "انتخاب استان",
                    placeholder: "انتخاب شهر",
                    didChange: (sObj) {},
                    valueList: const ['تهران', 'ساری', 'تبریز'],
                  ),
                  SizedBox(
                    height: media.height * 0.03,
                  ),
                  DropDown(
                    title: "انتخاب شهرستان",
                    placeholder: "انتخاب شهر",
                    didChange: (sObj) {},
                    valueList: const ['تهران', 'ساری', 'تبریز'],
                  ),
                  SizedBox(
                    height: media.height * 0.03,
                  ),
                  RoundedButten(
                    title: "ارسال",
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const LoginView()));
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
