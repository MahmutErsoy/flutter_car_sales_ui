import 'package:flutter/material.dart';
import 'package:flutter_car_sales_ui/core/constants/assets_constants.dart';
import 'package:flutter_car_sales_ui/core/constants/colors_constants.dart';
import 'package:flutter_car_sales_ui/core/constants/string_constants.dart';
import 'package:flutter_car_sales_ui/views/login_screen/login_screen_view_model.dart';
import 'package:flutter_car_sales_ui/views/sign_up_screen/sign_up_screen_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/base/base_view.dart';
import 'login_screen_widget.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<LoginScreenViewModel>(
      viewModel: Provider.of<LoginScreenViewModel>(context, listen: false),
      onModelReady: (model) async {
        model.setContext(context);
        await model.init();
      },
      pageBuilder: (context, viewModel, _) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
            child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            children: [
              SizedBox(
                height: 36.h,
              ),
              Image.asset(AssetsConstants.profilee),
              SizedBox(
                height: 95.h,
              ),
              Text(
                StringConstants.login,
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                StringConstants.welcome,
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 44.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: const CustomTextField(
                  hint: StringConstants.username,
                  icon: Icons.person_outlined,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: const CustomTextField(
                  hint: StringConstants.password,
                  icon: Icons.lock_outline,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Text(
                StringConstants.forgotPassword,
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(ColorConstants.instance.blazeOrange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                      ),
                      fixedSize: MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.height, 64.h)),
                    ),
                    onPressed: () {},
                    child: Text(
                      StringConstants.login,
                      style: Theme.of(context).textTheme.headline2,
                    )),
              ),
              SizedBox(
                height: 45.h,
              ),
              Wrap(
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
                        builder: (context) => SignUpScreenView(),
                      ));
                    },
                    child: Text(
                      StringConstants.signUp,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
