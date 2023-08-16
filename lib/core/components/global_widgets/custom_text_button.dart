import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors_constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    this.onPressed,
    required this.text,
  });
  final VoidCallback? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorConstants.instance.blazeOrange),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.sp),
            ),
          ),
          fixedSize: MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.height, 64.h)),
        ),
        onPressed: onPressed ?? () {},
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline2,
        ));
  }
}
