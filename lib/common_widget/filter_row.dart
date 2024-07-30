import 'package:flutter/material.dart';

import '../common/constance.dart';

class FilterRow extends StatelessWidget {
  final Map fobj;
  final bool isSelected;
  final VoidCallback onPressed;
  const FilterRow(
      {super.key,
      required this.fobj,
      required this.isSelected,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              fobj["name"],
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: isSelected ? AppColor.primary : AppColor.primaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: onPressed,
            child: Image.asset(
              isSelected
                  ? "assets/images/checkbox_check.png"
                  : "assets/images/checkbox.png",
              width: 25,
              height: 25,
            ),
          ),
        ],
      ),
    );
  }
}
