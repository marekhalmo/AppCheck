# AppCheck

[![Pub](https://img.shields.io/pub/v/appcheck.svg)](https://pub.dartlang.org/packages/appcheck)

A Flutter plugin that allows you to check if an app is installed/enabled, launch an app and get the list of installed apps.

## Installation

First, add `appcheck` as a [dependency in your pubspec.yaml file](https://flutter.io/using-packages/).

## Methods available

- `checkAvailability(String uri)`
- `isAppInstalled(String uri)`
- `getInstalledApps()` (only for **Android**)
- `isAppEnabled(String uri)` (only for **Android**)
- `launchApp(String uri)`

## Permissions

Before using the plugin, you need to add declarations in your configuration files.

### Android

If you want to use the `getInstalledApps()` function, you need the `QUERY_ALL_PACKAGES` permission.

 ```xml
<uses-permission android:name="android.permission.QUERY_ALL_PACKAGES" />
 ```

 If you only want to check certain apps and you know the packageName, add them via queries in AndroidManifest.xml.

 ```xml
<queries>
    <package android:name="com.google.android.apps.maps"/>
</queries>
 ```

### iOS

Make sure your `Info.plist` file includes the necessary URL schemes under `LSApplicationQueriesSchemes` to check and launch other apps:

```xml
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>scheme1</string>
    <string>scheme2</string>
    <!-- Add more schemes as needed -->
</array>
```

Example:

```xml
<key>LSApplicationQueriesSchemes</key>
<array>
    <string>fb</string>
    <string>twitter</string>
    <string>instagram</string>
    <string>whatsapp</string>
    <string>youtube</string>
    <string>comgooglemaps</string>
    <string>http</string>
    <string>https</string>
    <string>mailto</string>
    <!-- Add more schemes as needed -->
</array>
```

Check out [Example](https://github.com/Yash-Garg/appcheck/blob/develop/example/lib/main.dart).

## Screenshots

<p align="center">
  <img width="48.2%" src="https://raw.githubusercontent.com/Yash-Garg/AppCheck/develop/images/screen-android.png">
  <img width="47%" src="https://raw.githubusercontent.com/Yash-Garg/AppCheck/develop/images/screen-ios.png">
</p>
