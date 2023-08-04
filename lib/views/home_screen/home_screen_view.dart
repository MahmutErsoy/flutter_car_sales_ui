import 'package:flutter/material.dart';
import 'package:flutter_car_sales_ui/core/constants/assets_constants.dart';
import 'package:flutter_car_sales_ui/core/constants/colors_constants.dart';
import 'package:flutter_car_sales_ui/core/constants/string_constants.dart';
import 'package:flutter_car_sales_ui/views/car_detail_screen/car_detail_screen_view.dart';
import 'package:flutter_car_sales_ui/views/home_screen/home_screen_view_model.dart';
import 'package:flutter_car_sales_ui/views/login_screen/login_screen_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/base/base_view.dart';

class HomeScreenView extends StatelessWidget {
  HomeScreenView({Key? key}) : super(key: key);

  final List<String> resimYollari = [AssetsConstants.featured, AssetsConstants.featured];

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeScreenViewModel>(
      viewModel: Provider.of<HomeScreenViewModel>(context, listen: false),
      onModelReady: (model) async {
        model.setContext(context);
        await model.init();
      },
      pageBuilder: (context, viewModel, _) => Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
            child: Icon(
              Icons.menu,
              color: ColorConstants.instance.black,
            ),
          ),
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.background,
          centerTitle: true,
          title: Padding(
            padding: EdgeInsets.symmetric(vertical: 17.h),
            child: Text(
              StringConstants.carStore,
              style: Theme.of(context).textTheme.headline1!.copyWith(color: ColorConstants.instance.blazeOrange),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
              child: Icon(
                Icons.notifications_outlined,
                color: ColorConstants.instance.black,
              ),
            )
          ],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        width: 326.w,
                        height: 74.h,
                        child: const CustomTextField(hint: StringConstants.honda, icon: Icons.search)),
                    Icon(
                      Icons.filter_list,
                      color: ColorConstants.instance.black,
                    )
                  ],
                ),
                SizedBox(
                  height: 42.h,
                ),
                SizedBox(
                  height: 186.h,
                  child: ListView.builder(
                    itemCount: resimYollari.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 24.w),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CarDetailScreenView(),
                        )),
                        child: Padding(
                          padding: EdgeInsets.only(right: 5.w),
                          child: Image.asset(
                            resimYollari[index],
                            fit: BoxFit.cover,
                            width: 308.w,
                            height: 186.h,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 34.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Row(
                    children: [
                      Text(
                        StringConstants.recommended,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      SizedBox(
                        width: 156.w,
                      ),
                      Text(
                        StringConstants.seeAll,
                        style: Theme.of(context).textTheme.headline3!.copyWith(
                              color: ColorConstants.instance.blackPearl,
                              fontWeight: FontWeight.w500,
                            ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
