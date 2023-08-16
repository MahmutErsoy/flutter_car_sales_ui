import 'package:flutter/material.dart';
import 'package:flutter_car_sales_ui/core/constants/assets_constants.dart';
import 'package:flutter_car_sales_ui/core/constants/string_constants.dart';
import 'package:flutter_car_sales_ui/views/login_screen/login_screen_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../core/base/base_view.dart';
import '../../core/components/global_widgets/custom_text_button.dart';
import '../../core/components/global_widgets/custom_text_field.dart';
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
                child: const CustomTextButton(
                  text: StringConstants.login,
                ),
              ),
              SizedBox(
                height: 45.h,
              ),
              const CustomWrap()
            ],
          ),
        )),
      ),
    );
  }
}
