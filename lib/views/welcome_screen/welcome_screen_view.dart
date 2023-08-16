import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/base/base_view.dart';
import 'welcome_screen_view_model.dart';
import 'welcome_screen_widget.dart';

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
        body: const SafeArea(
          child: WelcomeButton(),
        ),
      ),
    );
  }
}
