import 'package:asghar_shop/common/constance.dart';
import 'package:flutter/material.dart';

class CategoryCell extends StatelessWidget {
  final Map pObj;
  final VoidCallback onPressed;

  const CategoryCell({
    super.key,
    required this.pObj,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(15),
        width: 250,
        decoration: BoxDecoration(
          color: (pObj["color"] as Color? ?? AppColor.primary).withOpacity(0.3),
          border: Border.all(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    pObj["name"],
                    style: TextStyle(
                        color: AppColor.primaryText,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Image.asset(
                  pObj["icon"],
                  width: 70,
                  height: 70,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
