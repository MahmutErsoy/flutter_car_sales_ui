import 'package:flutter/material.dart';

import '../../core/constants/assets_constants.dart';
import '../login_screen/login_screen_view.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const LoginScreenView(),
        ));
      },
      child: Center(
        child: Image.asset(AssetsConstants.carStore),
      ),
    );
  }
}
