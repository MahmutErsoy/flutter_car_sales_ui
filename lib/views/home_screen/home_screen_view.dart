import 'package:flutter/material.dart';
import 'package:flutter_car_sales_ui/core/constants/assets_constants.dart';
import 'package:flutter_car_sales_ui/core/constants/colors_constants.dart';
import 'package:flutter_car_sales_ui/core/constants/string_constants.dart';
import 'package:flutter_car_sales_ui/views/car_detail_screen/car_detail_screen_view.dart';
import 'package:flutter_car_sales_ui/views/home_screen/home_screen_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../core/base/base_view.dart';
import '../../core/components/global_widgets/custom_text_field.dart';
import 'data.dart';

class HomeScreenView extends StatefulWidget {
  HomeScreenView({Key? key}) : super(key: key);

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  final List<String> resimYollari = [AssetsConstants.featured, AssetsConstants.featured];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeScreenViewModel>(
      viewModel: Provider.of<HomeScreenViewModel>(context, listen: false),
      onModelReady: (model) async {
        model.setContext(context);
        await model.init();
      },
      pageBuilder: (context, viewModel, _) => Stack(
        children: [
          Scaffold(
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
            body: Stack(
              children: [
                ListView(
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
                                  builder: (context) => const CarDetailScreenView(),
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
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 24.h),
                            child: Column(
                              children: [
                                Row(
                                    children: carsList.sublist(0, 2).map((e) {
                                  int index = carsList.indexOf(e);
                                  return SizedBox(
                                    height: 231.h,
                                    width: 175.w,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            Image.asset(e.image),
                                            Positioned(
                                              top: 10.h,
                                              right: 12.w,
                                              child: Icon(
                                                e.icon,
                                                color: index == 0
                                                    ? ColorConstants.instance.blazeOrange
                                                    : ColorConstants.instance.gray,
                                              ),
                                            ),
                                            Positioned(
                                              top: 10.h,
                                              left: 14.w,
                                              child: Text(
                                                e.view,
                                                style: Theme.of(context).textTheme.headline6!.copyWith(
                                                      color: ColorConstants.instance.blazeOrange,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Text(
                                          e.model,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          e.price,
                                          style: Theme.of(context).textTheme.headline6!.copyWith(
                                              color: ColorConstants.instance.blackPearl, fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  );
                                }).toList()),
                                SizedBox(
                                  height: 24.h,
                                ),
                                Row(
                                    children: carsList.sublist(2, 4).map((e) {
                                  int index = carsList.indexOf(e);
                                  return SizedBox(
                                    height: 231.h,
                                    width: 175.w,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Stack(
                                          children: [
                                            Image.asset(e.image),
                                            Positioned(
                                              top: 10.h,
                                              right: 12.w,
                                              child: Icon(
                                                e.icon,
                                                color: index == 3
                                                    ? ColorConstants.instance.blazeOrange
                                                    : ColorConstants.instance.gray,
                                              ),
                                            ),
                                            Positioned(
                                              top: 10.h,
                                              left: 14.w,
                                              child: Text(
                                                e.view,
                                                style: Theme.of(context).textTheme.headline6!.copyWith(
                                                      color: ColorConstants.instance.blazeOrange,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Text(
                                          e.model,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4!
                                              .copyWith(fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          e.price,
                                          style: Theme.of(context).textTheme.headline6!.copyWith(
                                              color: ColorConstants.instance.blackPearl, fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  );
                                }).toList()),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: SizedBox(
                      height: 70.h,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(44),
                        child: BottomNavigationBar(
                          currentIndex: _selectedIndex,
                          onTap: _onItemTapped,
                          backgroundColor: ColorConstants.instance.white,
                          selectedItemColor: ColorConstants.instance.blazeOrange,
                          unselectedItemColor: ColorConstants.instance.gray,
                          type: BottomNavigationBarType.fixed,
                          items: const <BottomNavigationBarItem>[
                            BottomNavigationBarItem(
                              icon: Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Icon(Icons.home, size: 32.0),
                              ),
                              label: '',
                            ),
                            BottomNavigationBarItem(
                              icon: Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Icon(Icons.favorite, size: 32.0),
                              ),
                              label: '',
                            ),
                            BottomNavigationBarItem(
                              icon: Padding(
                                padding: EdgeInsets.only(top: 6),
                                child: Icon(Icons.person, size: 32.0),
                              ),
                              label: '',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
