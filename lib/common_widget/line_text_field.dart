import 'package:flutter/material.dart';

import '../common/constance.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    super.key,
    required this.controller,
    required this.title,
    required this.placeholder,
    this.right,
    required this.sizetext,
    this.hinttextsize,
    this.keyboardType,
    required this.obscureText,
    this.left,
  });
  final TextEditingController controller;
  final String title;
  final String placeholder;
  final Widget? right;
  final Widget? left;
  final double sizetext;
  final double? hinttextsize;
  final TextInputType? keyboardType;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: AppColor.primaryText,
            fontSize: sizetext,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextField(
          controller: controller,
          keyboardType: TextInputType.phone,
          textDirection: TextDirection.rtl,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            suffixIcon: right,
            prefixIcon: left,
            focusedBorder: InputBorder.none,
            hintText: placeholder,
            hintTextDirection: TextDirection.rtl,
            hintStyle: TextStyle(
                color: AppColor.placeholder,
                fontSize: hinttextsize,
                fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 1,
          color: Color.fromARGB(255, 211, 208, 208),
        )
      ],
    );
  }
}
