import 'package:flutter_car_sales_ui/views/car_detail_screen/car_detail_screen_view_model.dart';
import 'package:flutter_car_sales_ui/views/home_screen/home_screen_view_model.dart';
import 'package:flutter_car_sales_ui/views/login_screen/login_screen_view_model.dart';
import 'package:flutter_car_sales_ui/views/sell_car_screen/sell_car_screen_view_model.dart';
import 'package:flutter_car_sales_ui/views/sign_up_screen/sign_up_screen_view_model.dart';
import 'package:flutter_car_sales_ui/views/watch_video_screen/watch_video_screen_view_model.dart';
import 'package:flutter_car_sales_ui/views/welcome_screen/welcome_screen_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ProviderManager {
  static ProviderManager? _instance;
  static ProviderManager get instance {
    _instance ??= ProviderManager._init();
    return _instance!;
  }

  ProviderManager._init();
  List<SingleChildWidget> singleProvider = [
    ChangeNotifierProvider<WelcomeScreenViewModel>(
      create: (_) => WelcomeScreenViewModel(),
    ),
    ChangeNotifierProvider<WatchVideoScreenViewModel>(
      create: (_) => WatchVideoScreenViewModel(),
    ),
    ChangeNotifierProvider<SignUpScreenViewModel>(
      create: (_) => SignUpScreenViewModel(),
    ),
    ChangeNotifierProvider<SellCarScreenViewModel>(
      create: (_) => SellCarScreenViewModel(),
    ),
    ChangeNotifierProvider<LoginScreenViewModel>(
      create: (_) => LoginScreenViewModel(),
    ),
    ChangeNotifierProvider<HomeScreenViewModel>(
      create: (_) => HomeScreenViewModel(),
    ),
    ChangeNotifierProvider<CarDetailScreenViewModel>(
      create: (_) => CarDetailScreenViewModel(),
    ),
  ];
}
