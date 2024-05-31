import 'package:flutter/material.dart';
import 'package:shop/app_main_layout.dart';
import 'package:shop/src/sample_feature/sample_item_details_view.dart';
import 'package:shop/src/sample_feature/sample_item_list_view.dart';
import 'package:shop/src/screen/home/home_screen.dart';
import 'package:shop/src/settings/settings_controller.dart';
import 'package:shop/src/settings/settings_view.dart';

class CustomRouter {
  static PageRouteBuilder transitionAnimation({
    required Widget child,
    required String routeName,
  }) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      transitionDuration: const Duration(milliseconds: 150),
      pageBuilder: (c, a1, a2) => child,
      transitionsBuilder: (c, anim, a2, child) => SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ).animate(anim),
        child: child,
      ),
    );
  }

  static PageRouteBuilder<dynamic>? onGenerateRoute(RouteSettings? settings) {
    switch (settings!.name) {
      case AppMainLayout.routeName:
        return transitionAnimation(
          child: const AppMainLayout(),
          routeName: AppMainLayout.routeName,
        );
      case SampleItemListView.routeName:
        return transitionAnimation(
          child: const SampleItemListView(),
          routeName: SampleItemListView.routeName,
        );
      case SampleItemDetailsView.routeName:
        return transitionAnimation(
          child: const SampleItemDetailsView(),
          routeName: SampleItemDetailsView.routeName,
        );
      case SettingsView.routeName:
        final args = settings.arguments as Map<String, dynamic>;
        final settingController =
            args['settingController'] as SettingsController;
        return transitionAnimation(
          child: SettingsView(controller: settingController),
          routeName: SettingsView.routeName,
        );
      case HomeScreen.routeName:
        return transitionAnimation(
          child: const HomeScreen(),
          routeName: HomeScreen.routeName,
        );
      default:
        assert(false, 'Need to implement ${settings.name}');
        return null;
    }
  }
}
