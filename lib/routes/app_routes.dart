import 'package:MyApp/routes/page_transition.dart';
import 'package:MyApp/screens/form_screen.dart';
import 'package:MyApp/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const home = '/';
  static const formRoutes = '/formRoutes';

  Route<String> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case home:
        return PageTransitionBuilder(
          widget: MyHomePage(),
          transitionType: TransitionType.rightToLeftTransition,
        );
        break;
      case formRoutes:
        return PageTransitionBuilder(
          widget: FormExample(),
          transitionType: TransitionType.rightToLeftTransition,
        );
        break;

      default:
        return PageTransitionBuilder(
          transitionType: TransitionType.botttomToTop,
          widget: Container(),
        );
    }
  }
}
