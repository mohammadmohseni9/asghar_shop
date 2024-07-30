import 'package:asghar_shop/common/constance.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ProductCell extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;
  final VoidCallback onCard;
  const ProductCell(
      {super.key,
      required this.pObj,
      required this.onPressed,
      required this.onCard});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        //alignment: Alignment.bottomRight,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(15),
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              width: 1, color: AppColor.placeholder.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'imageProduct',
                  child: Image.asset(
                    pObj["icon"],
                    width: 90,
                    height: 75,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            Text(
              pObj["name"],
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: AppColor.primaryText,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "${pObj["unit"]} : ${pObj["qty"]}".toPersianDigit(),
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: AppColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: onCard,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColor.primary,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/add.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
                Text(
                  pObj["price"].toString().toPersianDigit(),
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      color: AppColor.primaryText,
                      fontSize: 13,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
