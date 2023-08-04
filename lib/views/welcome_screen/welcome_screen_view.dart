import 'package:flutter/material.dart';
import 'package:flutter_car_sales_ui/core/constants/assets_constants.dart';
import 'package:flutter_car_sales_ui/views/login_screen/login_screen_view.dart';
import 'package:provider/provider.dart';

import '../../core/base/base_view.dart';
import 'welcome_screen_view_model.dart';

class WelcomeScreenView extends StatelessWidget {
  const WelcomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<WelcomeScreenViewModel>(
      viewModel: Provider.of<WelcomeScreenViewModel>(context, listen: false),
      onModelReady: (model) async {
        model.setContext(context);
        await model.init();
      },
      pageBuilder: (context, viewModel, _) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.onBackground,
        body: SafeArea(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LoginScreenView(),
              ));
            },
            child: Center(
              child: Image.asset(AssetsConstants.carStore),
            ),
          ),
        ),
      ),
    );
  }
}
