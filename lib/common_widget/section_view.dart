import 'package:asghar_shop/common/constance.dart';
import 'package:flutter/material.dart';

class SectionView extends StatelessWidget {
  const SectionView(
      {super.key,
      required this.title,
      this.isShowSeeAllButton,
      required this.onPressed,
      this.padding});

  final String title;
  final String? isShowSeeAllButton;
  final VoidCallback onPressed;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: onPressed,
            child: Text(
              "دیدن بیشتر",
              style: TextStyle(
                  color: AppColor.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            title,
            style: TextStyle(
                color: AppColor.primaryText,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
