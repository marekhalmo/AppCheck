import 'dart:io';

import 'package:flutter/services.dart';

///
/// App info model class for returning data
///
/// [packageName] is the package name of the app (ios: bundle id, android: package name)
///
/// [appName] is the name of the app (if available)
///
/// [versionName] is the version name of the app (if available)
///
/// [isSystemApp] is a boolean value indicating if the app is a system app (if available)
class AppInfo {
  final String packageName;
  final String? appName;
  final String? versionName;
  final bool? isSystemApp;

  AppInfo({
    required this.packageName,
    this.appName,
    this.versionName,
    this.isSystemApp,
  });

  static AppInfo fromMap(Map<dynamic, dynamic> map) {
    return AppInfo(
      appName: map["app_name"],
      packageName: map["package_name"],
      versionName: map["version_name"],
      isSystemApp: map["system_app"],
    );
  }

  @override
  String toString() {
    if (Platform.isAndroid) {
      return 'App - $appName, Package - $packageName, Version - $versionName, System App - $isSystemApp';
    } else if (Platform.isIOS) {
      return 'App - $packageName';
    } else {
      throw PlatformException(code: "404", message: "Platform not supported");
    }
  }
}
