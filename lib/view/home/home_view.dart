import 'package:flutter/material.dart';
import '../../common/constance.dart';
import '../../common_widget/section_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List exclusiveOffer= [
    {
      "name":"موز تازه",
      "icon" : "assets/images/banana.png",
      "qty" : "7",
      "unit" : "قیمت / کیلو",
      "price" : "30 هزار تومان"
    },
    {
      "name":"سیب تازه ",
      "icon" : "assets/images/apple.png",
      "qty" : "1",
      "unit" : "قیمت / کیلو",
      "price" : "15 هزار تومان"
    }
  ];



  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
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
                        "تهران ، پردیس",
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
                    height: media.height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      width: double.maxFinite,
                      height: 115,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(97, 144, 144, 144),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/banner_top.png",
                        fit: BoxFit.cover,
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
                    height: 250,
                    child: ListView.builder(
                      itemCount: exclusiveOffer.length,
                      itemBuilder: (context , index){ 
                        var pObj = exclusiveOffer[index] as Map? ??{};
                        return Container();
                      }),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
