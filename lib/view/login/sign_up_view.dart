import 'package:asghar_shop/common/constance.dart';
import 'package:flutter/material.dart';

import '../../common_widget/line_text_field.dart';
import '../../common_widget/rounded_butten.dart';

class SingUpView extends StatefulWidget {
  SingUpView({super.key});

  @override
  State<SingUpView> createState() => _SingUpViewState();
}

class _SingUpViewState extends State<SingUpView> {
  TextEditingController txtUser = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  bool isShow = false;

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
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/color_logo.png",
                      width: 50,
                    ),
                    SizedBox(
                      height: media.height * 0.10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "ثبت نام کنید :",
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "اطلاعات خود را وارد کنید",
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
                    TextInputField(
                      obscureText: false,
                      controller: txtEmail,
                      placeholder: "ایمیل خود را وارد کنید",
                      title: "ایمیل",
                      sizetext: 15,
                      hinttextsize: 13,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: media.height * 0.03,
                    ),
                    TextInputField(
                      obscureText: false,
                      controller: txtEmail,
                      placeholder: "نام کاربری خود را وارد کنید",
                      title: "نام کاربری",
                      sizetext: 15,
                      hinttextsize: 13,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: media.height * 0.03,
                    ),
                    TextInputField(
                      obscureText: isShow,
                      controller: txtPassword,
                      placeholder: "رمز عبور خود را وارد کنید",
                      title: "رمز عبور",
                      sizetext: 15,
                      hinttextsize: 13,
                      keyboardType: TextInputType.number,
                      left: IconButton(
                        onPressed: () {
                          setState(() {
                            isShow = !isShow;
                          });
                        },
                        icon: Icon(
                          isShow ? Icons.visibility : Icons.visibility_off,
                          color: AppColor.textTitle,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text("!فراموشی رمز عبور"),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: media.height * 0.03,
                    ),
                    RoundedButten(
                      title: "ثبت نام",
                      onPressed: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) => const SignInView()));
                        // }),{
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text("ورود کنید"),
                        ),
                        const Text("قبلا ثبت نام کردید؟"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
