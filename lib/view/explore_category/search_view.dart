import 'package:asghar_shop/common_widget/product_cell.dart';
import 'package:asghar_shop/view/explore_category/filters_view.dart';
import 'package:flutter/material.dart';
import '../../common/constance.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TextEditingController txtSearch = TextEditingController();
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FiltersView(),
                ),
              );
            },
            icon: Image.asset(
              "assets/images/filter_ic.png",
              width: 20,
              height: 20,
            ),
          ),
        ],
        title: Container(
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
              suffixIcon: Padding(
                padding: const EdgeInsetsDirectional.all(12.0),
                child: Image.asset(
                  "assets/images/search.png",
                ),
              ),
              prefixIcon: IconButton(
                icon: Image.asset(
                  "assets/images/t_close.png",
                  width: 20,
                  height: 20,
                  fit: BoxFit.cover,
                ),
                onPressed: () {
                  txtSearch.text = "";
                  FocusScope.of(context).requestFocus(FocusNode());
                  setState(() {});
                },
              ),
              focusedBorder: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
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
