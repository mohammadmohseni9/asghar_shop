import 'package:asghar_shop/common_widget/product_cell.dart';
import 'package:flutter/material.dart';
import '../../common/constance.dart';

class ExploreDetailsView extends StatefulWidget {
  final Map eObj;

  const ExploreDetailsView({super.key, required this.eObj});

  @override
  State<ExploreDetailsView> createState() => _ExploreDetailsViewState();
}

class _ExploreDetailsViewState extends State<ExploreDetailsView> {
  List listArr = [
    {
      "name": "نوشابه رژیمی",
      "icon": "assets/images/diet_coke.png",
      "qty": "57",
      "unit": "هزار تومان",
      "price": "20",
    },
    {
      "name": "نوشابه اسپرایت",
      "icon": "assets/images/sprite_can.png",
      "qty": "80",
      "unit": "هزار تومان",
      "price": "19 هزار تومان",
    },
    {
      "name": "آب سیب سبز",
      "icon": "assets/images/juice_apple_grape.png",
      "qty": "90",
      "unit": "هزار تومان",
      "price": "18",
    },
    {
      "name": "حبوبات و سبزیجات",
      "icon": "assets/images/frash_fruits.png",
      "qty": "40",
      "unit": "هزار تومان",
      "price": "16",
    },
    {
      "name": "نوشابه زرد",
      "icon": "assets/images/orenge_juice.png",
      "qty": "300",
      "unit": "هزار تومان",
      "price": "30",
    },
    {
      "name": "کوکاکولا",
      "icon": "assets/images/cocacola_can.png",
      "qty": "25",
      "unit": "هزار تومان",
      "price": "20",
    },
    {
      "name": "پپسی",
      "icon": "assets/images/pepsi_can.png",
      "qty": "10",
      "unit": "هزار تومان",
      "price": "15",
    }
  ];

  @override
  Widget build(BuildContext context) {
    //var media = MediaQuery.sizeOf(context);
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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/images/filter_ic.png",
              width: 20,
              height: 20,
            ),
          ),
        ],
        title: Text(
          widget.eObj["name"].toString(),
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: GridView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 10,
              mainAxisSpacing: 14),
          itemCount: listArr.length,
          itemBuilder: (context, index) {
            var pObj = listArr[index] as Map? ?? {};
            return ProductCell(
              pObj: pObj,
              onPressed: () {},
              onCard: () {},
            );
          }),
    );
  }
}
