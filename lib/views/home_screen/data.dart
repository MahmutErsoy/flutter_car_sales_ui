// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_car_sales_ui/core/constants/assets_constants.dart';
import 'package:flutter_car_sales_ui/core/constants/string_constants.dart';

class Cars {
  final String image;
  final String model;
  final String price;
  final String view;
  final IconData icon;
  Cars({
    required this.image,
    required this.model,
    required this.price,
    required this.view,
    required this.icon,
  });
}

List<Cars> carsList = [
  Cars(
    image: AssetsConstants.audi,
    model: StringConstants.audi,
    price: StringConstants.carPrice1,
    view: StringConstants.view,
    icon: Icons.favorite_outlined,
  ),
  Cars(
    image: AssetsConstants.suzuki,
    model: StringConstants.suzuki,
    price: StringConstants.carPrice2,
    view: StringConstants.view,
    icon: Icons.favorite_outlined,
  ),
  Cars(
    image: AssetsConstants.mercedes,
    model: StringConstants.mercedes,
    price: StringConstants.carPrice1,
    view: StringConstants.view,
    icon: Icons.favorite_outlined,
  ),
  Cars(
    image: AssetsConstants.hyundai,
    model: StringConstants.hyundai,
    price: StringConstants.carPrice2,
    view: StringConstants.view,
    icon: Icons.favorite_outlined,
  ),
];
