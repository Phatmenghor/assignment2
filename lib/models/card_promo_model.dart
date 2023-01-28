import 'package:flutter/material.dart';

import '../constants/app_color.dart';

class CardPromoModel {
  final String? image;
  final String? text;
  final String? subTitle;
  final String? textButton;
  final Color? colorBackgroud;
  final Color? colorButton;

  CardPromoModel({
    this.textButton,
    this.image,
    this.text,
    this.subTitle,
    this.colorBackgroud,
    this.colorButton,
  });
}

List<CardPromoModel> cardPromoModel = [
  CardPromoModel(
    image: 'assets/foods/savic.png',
    text: 'Special Deal for',
    subTitle: 'December',
    colorBackgroud: AppColor.mainColor,
    colorButton: AppColor.yellowColor,
    textButton: 'Buy Nows',
  ),
  CardPromoModel(
    image: 'assets/foods/pizza_small.png',
    text: 'Special Deal for',
    subTitle: 'December',
    colorBackgroud: AppColor.yellowColor,
    colorButton: AppColor.mainColor,
    textButton: 'Buy Now',
  ),
  CardPromoModel(
    image: 'assets/foods/pizza_small.png',
    text: 'Special Deal for',
    subTitle: 'December',
    colorBackgroud: AppColor.greenColor,
    colorButton: AppColor.yellowColor,
    textButton: 'Buy Now',
  ),
];
