import 'package:flutter/material.dart';

import 'package:components_app/screens/screens.dart';
import 'package:components_app/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     name: 'Home',
    //     screen: const HomeScreen(),
    //     icon: Icons.home),
    MenuOption(
        route: 'listview1',
        name: 'ListView type 1',
        screen: ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'ListView type 2',
        screen: ListView2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: 'alert',
        name: 'Alerts',
        screen: const AlertScreen(),
        icon: Icons.crisis_alert),
    MenuOption(
        route: 'card',
        name: 'Cards',
        screen: const CardScreen(),
        icon: Icons.card_membership),
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const CircleAvatarScreen(),
        icon: Icons.person_outline),
    MenuOption(
        route: 'container',
        name: 'Animated Containers',
        screen: const ContainerScreen(),
        icon: Icons.play_circle_outline),
    MenuOption(
        route: 'inputs',
        name: 'Form inputs',
        screen: const InputsScreen(),
        icon: Icons.import_contacts_outlined),
    MenuOption(
        route: 'slider',
        name: 'Slider and Checks',
        screen: const SliderScreen(),
        icon: Icons.slideshow_rounded),
    MenuOption(
        route: 'listviewbuilder',
        name: 'IniniteScroll and Pull to Refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.build),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (context) => const HomeScreen()});

    for (final opt in menuOptions) {
      appRoutes.addAll({opt.route: (context) => opt.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => ListView1Screen(),
  //   'listview2': (context) => ListView2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
