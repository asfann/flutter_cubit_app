import 'package:flutter/material.dart';
import 'package:flutter_cubit/view/widgets/app_text.dart';

import '../../data/misc/colors.dart';


class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  String? text;
  IconData? iconData;
  double size;
  bool isIcon;
  final Color BorderColor;

  AppButton(
      {Key? key,
        this.isIcon=false,
        this.text="hi",
        this.iconData,
      required this.color,
      required this.size,
      required this.backgroundColor,
      required this.BorderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            border: Border.all(color: BorderColor, width: 1.0),
            borderRadius: BorderRadius.circular(15),
            color: AppColors.buttonBackground),
        child: isIcon==false?Center(child: AppText(text: text!,color: Colors.black,)):Center(child: Icon(iconData!, color: color,)),
      ),
    );
  }
}
