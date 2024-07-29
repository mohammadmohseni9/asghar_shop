import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

import '../../common/constance.dart';
import '../../common_widget/rounded_butten.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: double.maxFinite,
                  height: media.width * 0.8,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(147, 210, 211, 210),
                      borderRadius: BorderRadius.circular(15)),
                  child: Hero(
                    tag: 'imageProduct',
                    child: Image.asset(
                      "assets/images/apple_red.png",
                      width: media.width * 0.7,
                    ),
                  ),
                ),
                SafeArea(
                  child: AppBar(
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
                    actions: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "assets/images/share.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "assets/images/fav.png",
                          width: 25,
                          height: 25,
                        ),
                      ),
                      Text(
                        "سیب قرمز",
                        //textDirection: TextDirection.rtl,
                        //textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.darkGray,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "قیمت 1 کیلوگرم".toPersianDigit(),
                    //textDirection: TextDirection.rtl,
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.secondaryText,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: media.height * 0.02,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      //

                      Text(
                        "25 هزار تومان".toPersianDigit(),
                        textDirection: TextDirection.rtl,
                        //textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.darkGray,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            "assets/images/subtack.png",
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                      Container(
                        width: 45,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color(0xffF2F3F2),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: AppColor.placeholder.withOpacity(0.5),
                              width: 1),
                        ),
                        child: Text(
                          "1".toPersianDigit(),
                          textDirection: TextDirection.rtl,
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.darkGray,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(
                            "assets/images/add_green.png",
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "assets/images/detail_open.png",
                          width: 15,
                          height: 15,
                        ),
                      ),
                      Text(
                        "درباره محصول",
                        //textDirection: TextDirection.rtl,
                        //textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.darkGray,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "سیب یک میوه ی سالم و مقوی است که می تواند شما را در برابر حملات سایبری میکروب ها در امان نگه دارد سعی کنید حداقل دو روز یک بار یک عدد از اون خوشگلاشو میل بفرمایید",
                    textDirection: TextDirection.rtl,
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.secondaryText,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                        icon: Image.asset("assets/images/back.png",
                            width: 15, height: 15, color: AppColor.primaryText),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColor.placeholder.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          "100گرم".toPersianDigit(),
                          textDirection: TextDirection.rtl,
                          //textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.darkGray,
                            fontSize: 9,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "مواد تشکیل دهنده",
                        //textDirection: TextDirection.rtl,
                        //textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.darkGray,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                        icon: Image.asset("assets/images/back.png",
                            width: 15, height: 15, color: AppColor.primaryText),
                      ),
                      IgnorePointer(
                        ignoring: true,
                        child: RatingBar.builder(
                          initialRating: 5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 15,
                          itemPadding:
                              const EdgeInsets.symmetric(horizontal: 1.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Color(0xffF3603F),
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "نظرات و امتیاز",
                        //textDirection: TextDirection.rtl,
                        //textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.darkGray,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    height: 2,
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  RoundedButten(
                    title: "افزودن به سبد خرید",
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
