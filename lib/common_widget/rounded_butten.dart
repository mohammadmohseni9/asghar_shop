import 'package:asghar_shop/common/constance.dart';
import 'package:flutter/material.dart';

class RoundedButten extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const RoundedButten(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size.width;
    return MaterialButton(
      //splashColor: Colors.transparent,
      height: 60,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
      minWidth: double.maxFinite,
      elevation: 0.1,
      color: AppColor.primary,
      onPressed: onPressed,
      child: Text(title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          )),
    );
  }
}

class RoundedIconButten extends StatelessWidget {
  final String title;
  final String icon;
  final Color backgroundColor;
  final VoidCallback onPressed;
  bool textRTL;

  RoundedIconButten(
      {super.key,
      required this.title,
      required this.textRTL,
      required this.onPressed,
      required this.icon,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    //var size = MediaQuery.of(context).size.width;
    return MaterialButton(
      //splashColor: Colors.transparent,
      height: 60,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
      minWidth: double.maxFinite,
      elevation: 0.1,
      color: backgroundColor,
      onPressed: onPressed,

      child: textRTL
          ? Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(
                  icon,
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  icon,
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    )),
              ],
            ),
    );
  }
}
