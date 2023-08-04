import 'package:flutter/material.dart';
import 'package:flutter_car_sales_ui/core/constants/string_constants.dart';
import 'package:flutter_car_sales_ui/views/login_screen/login_screen_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/base/base_view.dart';
import '../../core/constants/colors_constants.dart';
import 'sell_car_screen_view_model.dart';

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
              SellTextField(hint: StringConstants.enterTitle),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  Text(
                    StringConstants.condition,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(
                    width: 133.w,
                  ),
                  Text(
                    StringConstants.year,
                    style: Theme.of(context).textTheme.headline3,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 210.w),
                child: SizedBox(
                  width: 147.w,
                  child: SellTextField(hint: StringConstants.enterYear),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Row(
                children: [
                  Text(
                    StringConstants.brand,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(
                    width: 133.w,
                  ),
                  Text(
                    StringConstants.model,
                    style: Theme.of(context).textTheme.headline3,
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 173.w, child: TextFieldSelect(hint: StringConstants.selectBrand)),
                  SizedBox(
                    width: 14.w,
                  ),
                  SizedBox(width: 173.w, child: TextFieldSelect(hint: StringConstants.selectModel)),
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                StringConstants.features,
                style: Theme.of(context).textTheme.headline3,
              ),
              SellTextField(hint: StringConstants.search),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check_box_outline_blank_outlined,
                    color: ColorConstants.instance.black,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    StringConstants.alarm,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    width: 90.w,
                  ),
                  Icon(
                    Icons.check_box_outline_blank_outlined,
                    color: ColorConstants.instance.black,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    StringConstants.cruise,
                    style: Theme.of(context).textTheme.headline4,
                  )
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check_box_outline_blank_outlined,
                    color: ColorConstants.instance.black,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    StringConstants.bluetooth,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(
                    width: 66.w,
                  ),
                  Icon(
                    Icons.check_box_outline_blank_outlined,
                    color: ColorConstants.instance.black,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    StringConstants.front,
                    style: Theme.of(context).textTheme.headline4,
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    StringConstants.location,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(
                    width: 133.w,
                  ),
                  Text(
                    StringConstants.carPrice,
                    style: Theme.of(context).textTheme.headline3,
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 173.w, child: SellTextField(hint: StringConstants.selectBrand)),
                  SizedBox(
                    width: 14.w,
                  ),
                  SizedBox(width: 173.w, child: SellTextField(hint: StringConstants.selectModel)),
                ],
              ),
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
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        )),
                    fillColor: ColorConstants.instance.porcelain,
                    contentPadding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 8.h),
                    filled: true,
                    hintText: StringConstants.writeDescription,
                    hintStyle: Theme.of(context).textTheme.headline6),
              ),
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
              TextButton(
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
                    StringConstants.sell,
                    style: Theme.of(context).textTheme.headline2,
                  )),
            ],
          ),
        )),
      ),
    );
  }
}

class SellTextField extends StatelessWidget {
  const SellTextField({
    super.key,
    required this.hint,
  });
  final String hint;

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
          fillColor: ColorConstants.instance.porcelain,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 9.w,
          ),
          filled: true,
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.headline6),
    );
  }
}

class TextFieldSelect extends StatelessWidget {
  const TextFieldSelect({
    super.key,
    required this.hint,
  });
  final String hint;

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
          fillColor: ColorConstants.instance.porcelain,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 9.w,
          ),
          filled: true,
          suffixIcon: Icon(
            Icons.keyboard_arrow_down,
            color: ColorConstants.instance.blackPearl,
          ),
          hintText: hint,
          hintStyle: Theme.of(context).textTheme.headline6),
    );
  }
}
