import 'package:flutter/material.dart';

import '../common/constance.dart';

class DropDown extends StatelessWidget {
  const DropDown(
      {super.key,
      required this.title,
      required this.placeholder,
      required this.didChange,
      required this.valueList});
  final Function(Object?) didChange;
  final String title;
  final String placeholder;
  final List valueList;
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
            color: AppColor.secondaryText,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          //width: double.maxFinite,
          height: 60,
          child: DropdownButtonHideUnderline(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: DropdownButton(
                value: valueList.first,
                onChanged: didChange,
                icon: Icon(
                  Icons.expand_more,
                  color: AppColor.textTitle,
                ),
                hint: Text(placeholder),
                isExpanded: true,
                items: valueList.map((location) {
                  return DropdownMenuItem<String>(
                    alignment: AlignmentDirectional.center,
                    value: location,
                    child: Text(
                      location.toString(),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: AppColor.primaryText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 1,
          color: const Color.fromARGB(255, 171, 170, 170),
        )
      ],
    );
  }
}
