// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planets_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PlanetsController on _PlanetsControllerBase, Store {
  Computed<List<Planet>>? _$filterPlanetsComputed;

  @override
  List<Planet> get filterPlanets => (_$filterPlanetsComputed ??=
          Computed<List<Planet>>(() => super.filterPlanets,
              name: '_PlanetsControllerBase.filterPlanets'))
      .value;

  final _$_planetsBoxAtom = Atom(name: '_PlanetsControllerBase._planetsBox');

  @override
  Box<Planet> get _planetsBox {
    _$_planetsBoxAtom.reportRead();
    return super._planetsBox;
  }

  @override
  set _planetsBox(Box<Planet> value) {
    _$_planetsBoxAtom.reportWrite(value, super._planetsBox, () {
      super._planetsBox = value;
    });
  }

  final _$planetsAtom = Atom(name: '_PlanetsControllerBase.planets');

  @override
  List<Planet> get planets {
    _$planetsAtom.reportRead();
    return super.planets;
  }

  @override
  set planets(List<Planet> value) {
    _$planetsAtom.reportWrite(value, super.planets, () {
      super.planets = value;
    });
  }

  final _$resAtom = Atom(name: '_PlanetsControllerBase.res');

  @override
  bool get res {
    _$resAtom.reportRead();
    return super.res;
  }

  @override
  set res(bool value) {
    _$resAtom.reportWrite(value, super.res, () {
      super.res = value;
    });
  }

  final _$searchTextAtom = Atom(name: '_PlanetsControllerBase.searchText');

  @override
  String get searchText {
    _$searchTextAtom.reportRead();
    return super.searchText;
  }

  @override
  set searchText(String value) {
    _$searchTextAtom.reportWrite(value, super.searchText, () {
      super.searchText = value;
    });
  }

  final _$showFavoritesAtom =
      Atom(name: '_PlanetsControllerBase.showFavorites');

  @override
  bool get showFavorites {
    _$showFavoritesAtom.reportRead();
    return super.showFavorites;
  }

  @override
  set showFavorites(bool value) {
    _$showFavoritesAtom.reportWrite(value, super.showFavorites, () {
      super.showFavorites = value;
    });
  }

  final _$planetSelectedAtom =
      Atom(name: '_PlanetsControllerBase.planetSelected');

  @override
  int get planetSelected {
    _$planetSelectedAtom.reportRead();
    return super.planetSelected;
  }

  @override
  set planetSelected(int value) {
    _$planetSelectedAtom.reportWrite(value, super.planetSelected, () {
      super.planetSelected = value;
    });
  }

  final _$charactersAtom = Atom(name: '_PlanetsControllerBase.characters');

  @override
  List<People> get characters {
    _$charactersAtom.reportRead();
    return super.characters;
  }

  @override
  set characters(List<People> value) {
    _$charactersAtom.reportWrite(value, super.characters, () {
      super.characters = value;
    });
  }

  final _$filmsAtom = Atom(name: '_PlanetsControllerBase.films');

  @override
  List<Film> get films {
    _$filmsAtom.reportRead();
    return super.films;
  }

  @override
  set films(List<Film> value) {
    _$filmsAtom.reportWrite(value, super.films, () {
      super.films = value;
    });
  }

  final _$getPlanetsAsyncAction =
      AsyncAction('_PlanetsControllerBase.getPlanets');

  @override
  Future getPlanets({String? nextPage}) {
    return _$getPlanetsAsyncAction
        .run(() => super.getPlanets(nextPage: nextPage));
  }

  final _$_PlanetsControllerBaseActionController =
      ActionController(name: '_PlanetsControllerBase');

  @override
  dynamic setRes(dynamic value) {
    final _$actionInfo = _$_PlanetsControllerBaseActionController.startAction(
        name: '_PlanetsControllerBase.setRes');
    try {
      return super.setRes(value);
    } finally {
      _$_PlanetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSearchText(dynamic value) {
    final _$actionInfo = _$_PlanetsControllerBaseActionController.startAction(
        name: '_PlanetsControllerBase.setSearchText');
    try {
      return super.setSearchText(value);
    } finally {
      _$_PlanetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setShowFavorites(dynamic value) {
    final _$actionInfo = _$_PlanetsControllerBaseActionController.startAction(
        name: '_PlanetsControllerBase.setShowFavorites');
    try {
      return super.setShowFavorites(value);
    } finally {
      _$_PlanetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPlanetSelected(int value) {
    final _$actionInfo = _$_PlanetsControllerBaseActionController.startAction(
        name: '_PlanetsControllerBase.setPlanetSelected');
    try {
      return super.setPlanetSelected(value);
    } finally {
      _$_PlanetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clearAll() {
    final _$actionInfo = _$_PlanetsControllerBaseActionController.startAction(
        name: '_PlanetsControllerBase.clearAll');
    try {
      return super.clearAll();
    } finally {
      _$_PlanetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setList(dynamic widget) {
    final _$actionInfo = _$_PlanetsControllerBaseActionController.startAction(
        name: '_PlanetsControllerBase.setList');
    try {
      return super.setList(widget);
    } finally {
      _$_PlanetsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
planets: ${planets},
res: ${res},
searchText: ${searchText},
showFavorites: ${showFavorites},
planetSelected: ${planetSelected},
characters: ${characters},
films: ${films},
filterPlanets: ${filterPlanets}
    ''';
  }
}
