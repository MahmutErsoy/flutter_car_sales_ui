import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/constants/string_constants.dart';
import '../sign_up_screen/sign_up_screen_view.dart';

class CustomWrap extends StatelessWidget {
  const CustomWrap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          StringConstants.dontHaveAnAccount,
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(
          width: 8.w,
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const SignUpScreenView(),
            ));
          },
          child: Text(
            StringConstants.signUp,
            style: Theme.of(context).textTheme.headline5,
          ),
        )
      ],
    );
  }
}
