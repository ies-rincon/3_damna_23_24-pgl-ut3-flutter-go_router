import 'package:flutter/material.dart';
import 'package:flutter_go_router/src/config/app_router.dart';
import 'settings/settings_controller.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData.dark(),
          theme: ThemeData(),
          themeMode: settingsController.themeMode,
          restorationScopeId: 'app',
          routerConfig: appRouter,
        );
      },
    );
  }
}
