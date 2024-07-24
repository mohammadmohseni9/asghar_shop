import 'package:asghar_shop/common/constance.dart';
import 'package:asghar_shop/common_widget/rounded_butten.dart';
import 'package:asghar_shop/view/login/verifaction_view.dart';
import 'package:flutter/material.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  TextEditingController txMobile = TextEditingController();
  FlCountryCodePicker flCountryCodePicker = const FlCountryCodePicker();
  late CountryCode countryCode;
  @override
  void initState() {
    super.initState();
    countryCode = flCountryCodePicker.countryCodes.firstWhere(
      (element) => element.name == "Iran",
    );
  }

  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    "assets/images/bottom_bg.png",
                    width: media.width,
                    height: media.height,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Image.asset(
                "assets/images/sign_in_top.png",
                width: media.width,
              ),
              SafeArea(
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: media.width * 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                              "به راحتی مواد غذایی و\n سبزیجات خود را دریافت کنید",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: AppColor.primaryText,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          TextField(
                            focusNode: _focusNode,
                            controller: txMobile,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              prefixIcon: GestureDetector(
                                onTap: () async {
                                  final code = await flCountryCodePicker
                                      .showPicker(context: context);
                                  if (code != null) {
                                    countryCode = code;
                                    if (mounted) {
                                      setState(() {});
                                    }
                                  }
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 15),
                                      width: 35,
                                      height: 35,
                                      child: countryCode.flagImage(),
                                    ),
                                    Text(
                                      countryCode.dialCode,
                                      style: TextStyle(
                                        color: AppColor.primaryText,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    )
                                  ],
                                ),
                              ),
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: "شماره تلفن",
                              hintStyle: TextStyle(
                                  color: AppColor.placeholder,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            width: double.maxFinite,
                            height: 1,
                            color: const Color(0xffE2E2E2),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text("ورود از طریق شبکه های اجتماعی",
                        style: TextStyle(
                            color: AppColor.secondaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: RoundedIconButten(
                        textRTL: true,
                        title: "وارد شدن با گوگل",
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const VerifactionView()));
                        },
                        icon: "assets/images/google_logo.png",
                        backgroundColor: const Color(0xff5383EC),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: RoundedIconButten(
                        textRTL: true,
                        title: "وارد شدن با فیس بوک",
                        onPressed: () {},
                        icon: "assets/images/fb_logo.png",
                        backgroundColor: const Color(0xff4A66AC),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
