import 'package:flutter/material.dart';
import 'package:flutter_car_sales_ui/core/components/global_widgets/custom_text_button.dart';
import 'package:flutter_car_sales_ui/core/constants/colors_constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../core/base/base_view.dart';
import '../../core/constants/assets_constants.dart';
import '../../core/constants/string_constants.dart';
import '../sell_car_screen/sell_car_screen_view.dart';
import 'watch_video_screen_view_model.dart';
import 'watch_video_screen_widget.dart';

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
              const ModelRow(),
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
              CustomTextButton(
                text: StringConstants.buy,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SellCarScreenView(),
                  ));
                },
              )
            ],
          ),
        )),
      ),
    );
  }
}
