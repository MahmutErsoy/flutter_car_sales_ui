import 'package:flutter/material.dart';
import 'package:flutter_car_sales_ui/core/components/global_widgets/custom_text_button.dart';
import 'package:flutter_car_sales_ui/core/constants/assets_constants.dart';
import 'package:flutter_car_sales_ui/core/constants/colors_constants.dart';
import 'package:flutter_car_sales_ui/core/constants/string_constants.dart';
import 'package:flutter_car_sales_ui/views/home_screen/home_screen_view.dart';
import 'package:flutter_car_sales_ui/views/sign_up_screen/sign_up_screen_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../core/base/base_view.dart';
import '../../core/components/global_widgets/custom_text_field.dart';
import 'sign_up_screen_view_model.dart';

class SignUpScreenView extends StatelessWidget {
  const SignUpScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<SignUpScreenViewModel>(
      viewModel: Provider.of<SignUpScreenViewModel>(context, listen: false),
      onModelReady: (model) async {
        model.setContext(context);
        await model.init();
      },
      pageBuilder: (context, viewModel, _) => Scaffold(
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
                height: 67.h,
              ),
              Text(
                StringConstants.signUp,
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                StringConstants.findCar,
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      color: ColorConstants.instance.black,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              SizedBox(
                height: 19.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: const CustomTextField(
                  hint: StringConstants.name,
                  icon: Icons.person_outlined,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: const CustomTextField(hint: StringConstants.email, icon: Icons.email_outlined),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: const CustomTextField(hint: StringConstants.phoneNumber, icon: Icons.phone),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: const CustomTextField(
                  hint: StringConstants.password,
                  icon: Icons.lock_outline,
                ),
              ),
              SizedBox(
                height: 41.h,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: CustomTextButton(
                    text: StringConstants.signUp,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomeScreenView(),
                      ));
                    },
                  )),
              SizedBox(
                height: 8.h,
              ),
              const OrDivider(),
              Text(
                StringConstants.signWith,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: ColorConstants.instance.blazeOrange,
                    ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const SocialMediaRow(),
              SizedBox(
                height: 34.h,
              ),
              const SignInWrap(),
            ],
          ),
        )),
      ),
    );
  }
}
