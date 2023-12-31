import 'package:flutter/material.dart';
import 'package:flutter_go_router/src/app.dart';
import 'package:flutter_go_router/src/settings/settings_controller.dart';
import 'package:flutter_go_router/src/settings/settings_service.dart';

void main() async {
  final settingsController = SettingsController(SettingsService());
  await settingsController.loadSettings();
  // Run the app and pass in the SettingsController.
  runApp(MyApp(settingsController: settingsController));
}
