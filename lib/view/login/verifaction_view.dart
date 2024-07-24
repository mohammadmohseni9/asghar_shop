import 'package:asghar_shop/common/constance.dart';
import 'package:flutter/material.dart';

import '../../common_widget/line_text_field.dart';
import 'location_select.dart';

class VerifactionView extends StatefulWidget {
  const VerifactionView({super.key});

  @override
  State<VerifactionView> createState() => _VerifactionViewState();
}

class _VerifactionViewState extends State<VerifactionView> {
  TextEditingController txtOTP = TextEditingController();

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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: media.width * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        " 4 رقم ارسال شده به تلفن خود را وارد کنید ",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: AppColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextInputField(
                    controller: txtOTP,
                    placeholder: " - - - - ",
                    title: "کد",
                    sizetext: 14,
                  ),
                  SizedBox(
                    height: media.height * 0.3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(25),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SelectLocationView()));
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColor.primary,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset(
                            "assets/images/back.png",
                            width: 20,
                            height: 20,
                            color: Colors.white,
                            //it: BoxFit.cover,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "ارسال مجدد کد",
                          style: TextStyle(
                            color: AppColor.primaryText,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
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
