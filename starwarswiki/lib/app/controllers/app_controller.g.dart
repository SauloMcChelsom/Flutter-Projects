// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  Computed<bool>? _$noInternetComputed;

  @override
  bool get noInternet =>
      (_$noInternetComputed ??= Computed<bool>(() => super.noInternet,
              name: '_AppControllerBase.noInternet'))
          .value;

  final _$isDarkThemeAtom = Atom(name: '_AppControllerBase.isDarkTheme');

  @override
  bool get isDarkTheme {
    _$isDarkThemeAtom.reportRead();
    return super.isDarkTheme;
  }

  @override
  set isDarkTheme(bool value) {
    _$isDarkThemeAtom.reportWrite(value, super.isDarkTheme, () {
      super.isDarkTheme = value;
    });
  }

  final _$autoThemeAtom = Atom(name: '_AppControllerBase.autoTheme');

  @override
  bool get autoTheme {
    _$autoThemeAtom.reportRead();
    return super.autoTheme;
  }

  @override
  set autoTheme(bool value) {
    _$autoThemeAtom.reportWrite(value, super.autoTheme, () {
      super.autoTheme = value;
    });
  }

  final _$contextAtom = Atom(name: '_AppControllerBase.context');

  @override
  BuildContext? get context {
    _$contextAtom.reportRead();
    return super.context;
  }

  @override
  set context(BuildContext? value) {
    _$contextAtom.reportWrite(value, super.context, () {
      super.context = value;
    });
  }

  final _$connectionStatusAtom =
      Atom(name: '_AppControllerBase.connectionStatus');

  @override
  String get connectionStatus {
    _$connectionStatusAtom.reportRead();
    return super.connectionStatus;
  }

  @override
  set connectionStatus(String value) {
    _$connectionStatusAtom.reportWrite(value, super.connectionStatus, () {
      super.connectionStatus = value;
    });
  }

  final _$indexSelectedAtom = Atom(name: '_AppControllerBase.indexSelected');

  @override
  int get indexSelected {
    _$indexSelectedAtom.reportRead();
    return super.indexSelected;
  }

  @override
  set indexSelected(int value) {
    _$indexSelectedAtom.reportWrite(value, super.indexSelected, () {
      super.indexSelected = value;
    });
  }

  final _$homeNavigatorKeyAtom =
      Atom(name: '_AppControllerBase.homeNavigatorKey');

  @override
  GlobalKey<NavigatorState> get homeNavigatorKey {
    _$homeNavigatorKeyAtom.reportRead();
    return super.homeNavigatorKey;
  }

  @override
  set homeNavigatorKey(GlobalKey<NavigatorState> value) {
    _$homeNavigatorKeyAtom.reportWrite(value, super.homeNavigatorKey, () {
      super.homeNavigatorKey = value;
    });
  }

  final _$searchNavigatorKeyAtom =
      Atom(name: '_AppControllerBase.searchNavigatorKey');

  @override
  GlobalKey<NavigatorState> get searchNavigatorKey {
    _$searchNavigatorKeyAtom.reportRead();
    return super.searchNavigatorKey;
  }

  @override
  set searchNavigatorKey(GlobalKey<NavigatorState> value) {
    _$searchNavigatorKeyAtom.reportWrite(value, super.searchNavigatorKey, () {
      super.searchNavigatorKey = value;
    });
  }

  final _$favoritesNavigatorKeyAtom =
      Atom(name: '_AppControllerBase.favoritesNavigatorKey');

  @override
  GlobalKey<NavigatorState> get favoritesNavigatorKey {
    _$favoritesNavigatorKeyAtom.reportRead();
    return super.favoritesNavigatorKey;
  }

  @override
  set favoritesNavigatorKey(GlobalKey<NavigatorState> value) {
    _$favoritesNavigatorKeyAtom.reportWrite(value, super.favoritesNavigatorKey,
        () {
      super.favoritesNavigatorKey = value;
    });
  }

  final _$settingsNavigatorKeyAtom =
      Atom(name: '_AppControllerBase.settingsNavigatorKey');

  @override
  GlobalKey<NavigatorState> get settingsNavigatorKey {
    _$settingsNavigatorKeyAtom.reportRead();
    return super.settingsNavigatorKey;
  }

  @override
  set settingsNavigatorKey(GlobalKey<NavigatorState> value) {
    _$settingsNavigatorKeyAtom.reportWrite(value, super.settingsNavigatorKey,
        () {
      super.settingsNavigatorKey = value;
    });
  }

  final _$_AppControllerBaseActionController =
      ActionController(name: '_AppControllerBase');

  @override
  dynamic setDarkTheme(bool value) {
    final _$actionInfo = _$_AppControllerBaseActionController.startAction(
        name: '_AppControllerBase.setDarkTheme');
    try {
      return super.setDarkTheme(value);
    } finally {
      _$_AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setAutoTheme(bool value) {
    final _$actionInfo = _$_AppControllerBaseActionController.startAction(
        name: '_AppControllerBase.setAutoTheme');
    try {
      return super.setAutoTheme(value);
    } finally {
      _$_AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setContext(dynamic currentContext) {
    final _$actionInfo = _$_AppControllerBaseActionController.startAction(
        name: '_AppControllerBase.setContext');
    try {
      return super.setContext(currentContext);
    } finally {
      _$_AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setConnectionStatus(String value) {
    final _$actionInfo = _$_AppControllerBaseActionController.startAction(
        name: '_AppControllerBase.setConnectionStatus');
    try {
      return super.setConnectionStatus(value);
    } finally {
      _$_AppControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDarkTheme: ${isDarkTheme},
autoTheme: ${autoTheme},
context: ${context},
connectionStatus: ${connectionStatus},
indexSelected: ${indexSelected},
homeNavigatorKey: ${homeNavigatorKey},
searchNavigatorKey: ${searchNavigatorKey},
favoritesNavigatorKey: ${favoritesNavigatorKey},
settingsNavigatorKey: ${settingsNavigatorKey},
noInternet: ${noInternet}
    ''';
  }
}
