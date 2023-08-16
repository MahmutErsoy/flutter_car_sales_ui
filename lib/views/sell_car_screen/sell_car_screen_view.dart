import 'package:flutter/material.dart';
import 'package:flutter_car_sales_ui/core/components/global_widgets/custom_text_button.dart';
import 'package:flutter_car_sales_ui/core/constants/string_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/base/base_view.dart';
import '../../core/constants/colors_constants.dart';
import 'sell_car_screen_view_model.dart';
import 'sell_car_screen_widget.dart';

class SellCarScreenView extends StatefulWidget {
  const SellCarScreenView({Key? key}) : super(key: key);

  @override
  State<SellCarScreenView> createState() => _SellCarScreenViewState();
}

class _SellCarScreenViewState extends State<SellCarScreenView> {
  String? status;

  @override
  Widget build(BuildContext context) {
    return BaseView<SellCarScreenViewModel>(
      viewModel: Provider.of<SellCarScreenViewModel>(context, listen: false),
      onModelReady: (model) async {
        model.setContext(context);
        await model.init();
      },
      pageBuilder: (context, viewModel, _) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.background,
          leading: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
            child: Icon(
              Icons.arrow_back,
              color: ColorConstants.instance.black,
            ),
          ),
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 27.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                StringConstants.title,
                style: Theme.of(context).textTheme.headline3,
              ),
              const SellTextField(hint: StringConstants.enterTitle),
              SizedBox(
                height: 12.h,
              ),
              const ConditionRow(),
              Padding(
                padding: EdgeInsets.only(left: 210.w),
                child: SizedBox(
                  width: 147.w,
                  child: const SellTextField(hint: StringConstants.enterYear),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              const BrandRow(),
              const SelectBrandRow(),
              SizedBox(
                height: 14.h,
              ),
              Text(
                StringConstants.features,
                style: Theme.of(context).textTheme.headline3,
              ),
              const SellTextField(hint: StringConstants.search),
              SizedBox(
                height: 8.h,
              ),
              const FirstCheckBoxRow(),
              SizedBox(
                height: 8.h,
              ),
              const SecondCheckBoxRow(),
              SizedBox(
                height: 20.h,
              ),
              const LocationRow(),
              const SelectLocationRow(),
              SizedBox(
                height: 14.h,
              ),
              Text(
                StringConstants.description,
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(
                height: 6.h,
              ),
              const DescriptionTextField(),
              SizedBox(
                height: 17.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 95.w),
                child: Text(
                  StringConstants.upload,
                  style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 14.sp),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              const CustomTextButton(text: StringConstants.sell)
            ],
          ),
        )),
      ),
    );
  }
}
