import 'package:asghar_shop/common_widget/Product_cell.dart';
import 'package:asghar_shop/view/product/product_details_view.dart';
import 'package:flutter/material.dart';
import '../../common/constance.dart';
import '../../common_widget/category.dart';
import '../../common_widget/section_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List exclusiveOffer = [
    {
      "name": "موز تازه",
      "icon": "assets/images/banana.png",
      "qty": "7",
      "unit": "قیمت هر کیلو",
      "price": "30 هزار تومان"
    },
    {
      "name": "سیب تازه ",
      "icon": "assets/images/apple.png",
      "qty": "1",
      "unit": "قیمت هر کیلو",
      "price": "15 هزار تومان"
    }
  ];

  List lastMobiles = [
    {
      "name": "نوکیا ساده",
      "icon": "assets/images/mobile1.jpg",
      "qty": "7",
      "unit": "قیمت هر کیلو",
      "price": "30 هزار تومان"
    },
    {
      "name": "گوشی شیائمی",
      "icon": "assets/images/moble2.png",
      "qty": "1",
      "unit": "قیمت هر کیلو",
      "price": "15 هزار تومان"
    }
  ];

  List bestSell = [
    {
      "name": "لامپ هدلایت",
      "icon": "assets/images/lamp.jpg",
      "qty": "7",
      "unit": "قیمت هر کیلو",
      "price": "30 هزار تومان"
    },
    {
      "name": "روغن موتور",
      "icon": "assets/images/rm.jpg",
      "qty": "1",
      "unit": "قیمت هر کیلو",
      "price": "15 هزار تومان"
    }
  ];
  List cargories = [
    {
      "name": "لامپ هدلایت",
      "icon": "assets/images/lamp.jpg",
      "qty": "7",
      "unit": "قیمت هر کیلو",
      "price": "30 هزار تومان"
    },
    {
      "name": "روغن موتور",
      "icon": "assets/images/rm.jpg",
      "qty": "1",
      "unit": "قیمت هر کیلو",
      "price": "15 هزار تومان"
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/color_logo.png",
                    width: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "تهران ، دماوند",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColor.darkGray,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Image.asset(
                        "assets/images/location.png",
                        width: 16,
                        height: 16,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: media.height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 52,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(97, 144, 144, 144),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: TextField(
                        controller: txtSearch,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsetsDirectional.all(12.0),
                            child: Image.asset(
                              "assets/images/search.png",
                            ),
                          ),
                          focusedBorder: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          hintText: "جست و جو",
                          hintTextDirection: TextDirection.rtl,
                          hintStyle: TextStyle(
                              color: AppColor.placeholder,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: media.height * 0.015,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: double.maxFinite,
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/supermarket.png",
                        fit: BoxFit.cover,
                        //height: 115,
                      ),
                    ),
                  ),
                  SectionView(
                    title: "جدیدترین تخفیف ها",
                    onPressed: () {},
                    //isShowSeeAllButton: null,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                        reverse: true,
                        //وقتی که میخواهیم افکت تصویر اسکرول رو حذف کنیم از این ویژگی فیزیک استفاده میکنیم
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        itemCount: exclusiveOffer.length,
                        itemBuilder: (context, index) {
                          var pObj = exclusiveOffer[index] as Map? ?? {};
                          return ProductCell(
                            onCard: () {},
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ProductDetailsView()));
                            },
                            pObj: pObj,
                          );
                        }),
                  ),
                  SectionView(
                    title: "پر فروش ترین محصولات",
                    onPressed: () {},
                    //isShowSeeAllButton: null,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                        reverse: true,
                        //وقتی که میخواهیم افکت تصویر اسکرول رو حذف کنیم از این ویژگی فیزیک استفاده میکنیم
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        itemCount: bestSell.length,
                        itemBuilder: (context, index) {
                          var pObj = bestSell[index] as Map? ?? {};
                          return ProductCell(
                            onCard: () {},
                            onPressed: () {},
                            pObj: pObj,
                          );
                        }),
                  ),
                  SectionView(
                    title: "اخرین موبایل ها",
                    onPressed: () {},
                    //isShowSeeAllButton: null,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                        reverse: true,
                        //وقتی که میخواهیم افکت تصویر اسکرول رو حذف کنیم از این ویژگی فیزیک استفاده میکنیم
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        itemCount: lastMobiles.length,
                        itemBuilder: (context, index) {
                          var pObj = lastMobiles[index] as Map? ?? {};
                          return ProductCell(
                            onCard: () {},
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ProductDetailsView()));
                            },
                            pObj: pObj,
                          );
                        }),
                  ),
                  SectionView(
                    title: "دسته بندی ها",
                    onPressed: () {},
                    //isShowSeeAllButton: null,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                  ),
                  SizedBox(
                    height: 110,
                    child: ListView.builder(
                        reverse: true,
                        //وقتی که میخواهیم افکت تصویر اسکرول رو حذف کنیم از این ویژگی فیزیک استفاده میکنیم
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        itemCount: lastMobiles.length,
                        itemBuilder: (context, index) {
                          var pObj = lastMobiles[index] as Map? ?? {};
                          return CategoryCell(
                            onPressed: () {},
                            pObj: pObj,
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 230,
                    child: ListView.builder(
                        reverse: true,
                        //وقتی که میخواهیم افکت تصویر اسکرول رو حذف کنیم از این ویژگی فیزیک استفاده میکنیم
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        itemCount: exclusiveOffer.length,
                        itemBuilder: (context, index) {
                          var pObj = exclusiveOffer[index] as Map? ?? {};
                          return ProductCell(
                            onCard: () {},
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ProductDetailsView()));
                            },
                            pObj: pObj,
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

String convertEnglishNumbersToPersian(String input) {
  Map<String, String> numberMap = {
    '0': '۰',
    '1': '۱',
    '2': '۲',
    '3': '۳',
    '4': '۴',
    '5': '۵',
    '6': '۶',
    '7': '۷',
    '8': '۸',
    '9': '۹',
    // ... و بقیه اعداد
  };

  String output = '';
  for (int i = 0; i < input.length; i++) {
    output += numberMap[input[i]] ?? input[i];
  }
  return output;
}
