import 'package:flutter/material.dart';
import 'package:flutter_car_sales_ui/core/constants/colors_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.icon,
  });
  final String hint;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 0,
              )),
          fillColor: ColorConstants.instance.white,
          contentPadding: EdgeInsets.symmetric(
            vertical: 21.h,
            horizontal: 64.w,
          ),
          filled: true,
          prefixIcon: Icon(
            icon,
            color: ColorConstants.instance.grayChateau,
          ),
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.headline3!.copyWith(
                color: ColorConstants.instance.grayChateau,
              )),
    );
  }
}
