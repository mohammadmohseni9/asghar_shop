import 'package:flutter/material.dart';
import '../../common/constance.dart';
import '../../common_widget/explore_cell.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  TextEditingController txtSearch = TextEditingController();

  List findProductCategory = [
    {
      "name": "حبوبات و سبزیجات",
      "icon": "assets/images/frash_fruits.png",
      "color": const Color.fromARGB(255, 113, 216, 84),
    },
    {
      "name": "تنقلات و خوراکی",
      "icon": "assets/images/beverages.png",
      "color": const Color.fromARGB(255, 102, 167, 208),
    },
    {
      "name": "ماهی و گوشت",
      "icon": "assets/images/meat_fish.png",
      "color": const Color.fromARGB(255, 129, 63, 13),
    },
    {
      "name": "لبنیات و تخم مرغ",
      "icon": "assets/images/dairy_eggs.png",
      "color": const Color.fromARGB(255, 137, 130, 138),
    },
    {
      "name": "نان و شیرینی",
      "icon": "assets/images/bakery_snacks.png",
      "color": const Color.fromARGB(255, 156, 212, 26),
    },
    {
      "name": "روغن",
      "icon": "assets/images/cooking_oil.png",
      "color": const Color.fromARGB(255, 241, 229, 62),
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
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
          title: Text(
            "دسته بندی های محصولات",
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColor.primaryText,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [],
            ),
            SizedBox(
              height: media.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(97, 144, 144, 144),
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.all(12.0),
                      child: Image.asset(
                        "assets/images/search.png",
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        "جستجو دسته ها",
                        style: TextStyle(
                            color: AppColor.secondaryText,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: media.height * 0.015,
            ),
            Expanded(
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.9,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 14),
                  itemCount: findProductCategory.length,
                  itemBuilder: (context, index) {
                    var pObj = findProductCategory[index] as Map? ?? {};
                    return ExploreCell(
                      pObj: pObj,
                      onPressed: () {},
                    );
                  }),
            )
          ],
        ));
  }
}
