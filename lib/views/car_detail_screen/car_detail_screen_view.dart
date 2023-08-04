import 'package:flutter/material.dart';
import 'package:flutter_car_sales_ui/core/constants/assets_constants.dart';
import 'package:flutter_car_sales_ui/core/constants/colors_constants.dart';
import 'package:flutter_car_sales_ui/core/constants/string_constants.dart';
import 'package:flutter_car_sales_ui/views/car_detail_screen/car_detail_screen_view_model.dart';
import 'package:flutter_car_sales_ui/views/watch_video_screen/watch_video_screen_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/base/base_view.dart';

class CarDetailScreenView extends StatelessWidget {
  const CarDetailScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<CarDetailScreenViewModel>(
      viewModel: Provider.of<CarDetailScreenViewModel>(context, listen: false),
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
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
              child: Icon(
                Icons.share,
                color: ColorConstants.instance.black,
              ),
            ),
          ],
        ),
        body: SafeArea(
            child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.w,
                  ),
                  child: Image.asset(AssetsConstants.car),
                ),
                Positioned(
                  top: 280.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 34.w),
                    child: Row(
                      children: [
                        Align(alignment: Alignment.bottomLeft, child: Image.asset(AssetsConstants.smallcar1)),
                        SizedBox(
                          width: 34.w,
                        ),
                        Align(alignment: Alignment.bottomCenter, child: Image.asset(AssetsConstants.smallcar2)),
                        SizedBox(
                          width: 34.w,
                        ),
                        Align(alignment: Alignment.bottomRight, child: Image.asset(AssetsConstants.smallcar3)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  Row(
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
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Rs. 18,00,000.00",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: StringConstants.lorem,
                          style: Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: " " + StringConstants.more,
                          style: Theme.of(context).textTheme.headline3!.copyWith(
                                fontWeight: FontWeight.w400,
                                color: ColorConstants.instance.azureRadiance,
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 123.w,
                        height: 28.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: ColorConstants.instance.blazeOrange,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check_box),
                            SizedBox(
                              width: 12.w,
                            ),
                            Text(
                              StringConstants.autopilot,
                              style: Theme.of(context).textTheme.headline2!.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 22.w,
                      ),
                      Container(
                        width: 150.w,
                        height: 28.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: ColorConstants.instance.blazeOrange,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check_box),
                            SizedBox(
                              width: 12.w,
                            ),
                            Text(
                              StringConstants.camera,
                              style: Theme.of(context).textTheme.headline2!.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        StringConstants.seeAll,
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.sp,
                            ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  Row(
                    children: [
                      Image.asset(AssetsConstants.deal),
                      SizedBox(
                        width: 14.w,
                      ),
                      Text(
                        StringConstants.dealer,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontWeight: FontWeight.w600, color: ColorConstants.instance.blackPearl),
                      ),
                      SizedBox(
                        width: 32.w,
                      ),
                      Image.asset(AssetsConstants.detail),
                      SizedBox(
                        width: 14.w,
                      ),
                      Text(
                        StringConstants.detail,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontWeight: FontWeight.w600, color: ColorConstants.instance.blackPearl),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Row(
                    children: [
                      Image.asset(AssetsConstants.location),
                      SizedBox(
                        width: 14.w,
                      ),
                      Text(
                        StringConstants.delhi,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontWeight: FontWeight.w600, color: ColorConstants.instance.blackPearl),
                      ),
                      SizedBox(
                        width: 58.w,
                      ),
                      Image.asset(AssetsConstants.loan),
                      SizedBox(
                        width: 14.w,
                      ),
                      Text(
                        StringConstants.loan,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontWeight: FontWeight.w600, color: ColorConstants.instance.blackPearl),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 23.h,
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
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WatchVideoScreenView(),
                        ));
                      },
                      child: Text(
                        StringConstants.buy,
                        style: Theme.of(context).textTheme.headline2,
                      )),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
