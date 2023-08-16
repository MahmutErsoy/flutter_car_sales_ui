import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/colors_constants.dart';
import '../../core/constants/string_constants.dart';

class ModelRow extends StatelessWidget {
  const ModelRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          StringConstants.tesla,
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 22.sp),
        ),
        SizedBox(
          width: 131.w,
        ),
        Text(
          "4.5/5",
          style: Theme.of(context).textTheme.headline2!.copyWith(
                color: ColorConstants.instance.blazeOrange,
                fontWeight: FontWeight.w500,
              ),
        ),
        SizedBox(
          width: 6.w,
        ),
        Icon(
          Icons.star,
          color: ColorConstants.instance.blazeOrange,
        )
      ],
    );
  }
}
