import 'package:flutter/material.dart';
import 'package:flutter_car_sales_ui/core/constants/assets_constants.dart';
import 'package:flutter_car_sales_ui/core/constants/colors_constants.dart';
import 'package:flutter_car_sales_ui/views/sell_car_screen/sell_car_screen_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/base/base_view.dart';
import '../../core/constants/string_constants.dart';
import 'watch_video_screen_view_model.dart';

class WatchVideoScreenView extends StatelessWidget {
  const WatchVideoScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<WatchVideoScreenViewModel>(
      viewModel: Provider.of<WatchVideoScreenViewModel>(context, listen: false),
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
            child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: Column(
            children: [
              Image.asset(AssetsConstants.carVideo),
              SizedBox(
                height: 20.h,
              ),
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
                  StringConstants.video,
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              SizedBox(
                height: 30.h,
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
                      builder: (context) => SellCarScreenView(),
                    ));
                  },
                  child: Text(
                    StringConstants.buy,
                    style: Theme.of(context).textTheme.headline2,
                  )),
            ],
          ),
        )),
      ),
    );
  }
}
