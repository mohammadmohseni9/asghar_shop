import 'package:asghar_shop/common_widget/rounded_butten.dart';
import 'package:flutter/material.dart';

import '../../common/constance.dart';
import '../../common_widget/filter_row.dart';

class FiltersView extends StatefulWidget {
  const FiltersView({super.key});

  @override
  State<FiltersView> createState() => _FiltersViewState();
}

class _FiltersViewState extends State<FiltersView> {
  List selectArr = [];

  List filterCategory = [
    {
      "id": "1",
      "name": "شیر",
    },
    {
      "id": "2",
      "name": "دوغ",
    },
    {
      "id": "3",
      "name": "ماست",
    },
    {
      "id": "4",
      "name": "چیپس",
    },
    {
      "id": "5",
      "name": "نوشابه ها",
    }
  ];
  List filterBrands = [
    {
      "id": "1",
      "name": "کاله",
    },
    {
      "id": "2",
      "name": "میهن",
    },
    {
      "id": "3",
      "name": "نادری",
    },
    {
      "id": "4",
      "name": "چی توز",
    },
    {
      "id": "5",
      "name": "اشی مشی",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/images/close.png",
              width: 20,
              height: 20,
            ),
          ),
        ],
        title: Text(
          "فیلترها",
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Color.fromARGB(210, 213, 214, 213),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "دسته ها",
                      style: TextStyle(
                          color: AppColor.primaryText,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //بسیار مهم و حیایتی نکته ی ریزی دارد
                    //نباید از علامت آکولاد استفاده کرد
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: filterCategory.map((fobj) {
                        return FilterRow(
                          isSelected: selectArr.contains(fobj),
                          onPressed: () {
                            if (selectArr.contains(fobj)) {
                              selectArr.remove(fobj);
                            } else {
                              selectArr.add(fobj);
                            }

                            setState(() {});
                          },
                          fobj: fobj,
                        );
                      }).toList(),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "دسته ها",
                      style: TextStyle(
                          color: AppColor.primaryText,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //بسیار مهم و حیایتی نکته ی ریزی دارد
                    //نباید از علامت آکولاد استفاده کرد
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: filterBrands.map((fobj) {
                        return FilterRow(
                          isSelected: selectArr.contains(fobj),
                          onPressed: () {
                            if (selectArr.contains(fobj)) {
                              selectArr.remove(fobj);
                            } else {
                              selectArr.add(fobj);
                            }

                            setState(() {});
                          },
                          fobj: fobj,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            RoundedButten(title: "تایید فیلترها", onPressed: () {})
          ],
        ),
      ),
    );
  }
}
