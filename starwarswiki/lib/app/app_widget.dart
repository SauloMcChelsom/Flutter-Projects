import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'controllers/app_controller.dart';
import 'themes/custom_themes.dart';
import 'utils/connectivity_status.dart';
import 'utils/preferences.dart';

final _appController = Modular.get<AppController>();

StorageUtil prefs = StorageUtil();

late StreamSubscription<ConnectivityResult> connectivitySubscription;

final Connectivity _connectivity = Connectivity();

class AppWidget extends StatefulWidget {
  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    prefs.getBool('auto_theme').then((auto) {
      _appController.setAutoTheme(auto);
    });
    prefs.getBool('is_dark_theme').then((tema) {
      _appController.setDarkTheme(tema);
    });
    ConnectivityStatus().initConnectivity(mounted);
    connectivitySubscription = _connectivity.onConnectivityChanged
        .listen(ConnectivityStatus().updateConnectionStatus);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);

      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light));
    }

    return Observer(builder: (_) {
      return MaterialApp(
        title: 'StarWars',
        debugShowCheckedModeBanner: false,
        theme: CustomThemes().light,
        darkTheme: CustomThemes().dark,
        themeMode: _appController.autoTheme
            ? ThemeMode.system
            : _appController.isDarkTheme
                ? ThemeMode.dark
                : ThemeMode.light,
        initialRoute: '/',
      ).modular();
    });
  }
}
