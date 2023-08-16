import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/assets_constants.dart';
import '../../core/constants/colors_constants.dart';
import '../../core/constants/string_constants.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          color: ColorConstants.instance.silver,
          thickness: 1.sp,
        )),
        SizedBox(width: 9.w),
        Text(
          StringConstants.or,
          style: Theme.of(context).textTheme.headline4!.copyWith(color: ColorConstants.instance.osloGray),
        ),
        SizedBox(width: 9.w),
        Expanded(
            child: Divider(
          color: ColorConstants.instance.silver,
          thickness: 1.sp,
        )),
      ],
    );
  }
}

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AssetsConstants.facebook),
        SizedBox(width: 24.w),
        Image.asset(AssetsConstants.instagram),
        SizedBox(width: 24.w),
        Image.asset(AssetsConstants.youtube),
      ],
    );
  }
}

class SignInWrap extends StatelessWidget {
  const SignInWrap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          StringConstants.haveAnAccount,
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(
          width: 7.w,
        ),
        Text(
          StringConstants.signIn,
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
