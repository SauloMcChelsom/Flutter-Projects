import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:mobx/mobx.dart';
import 'package:starwarswiki/app/models/database/film.dart';
import 'package:starwarswiki/app/models/database/starship.dart';
import 'package:starwarswiki/app/repositories/starships_repository.dart';
import 'package:starwarswiki/app/utils/converters.dart';
import 'package:starwarswiki/code/config.dart';

import 'films_controller.dart';

part 'starships_controller.g.dart';

final _filmsController = Modular.get<FilmsController>();

final _starshipsRepository = StarshipsRepositiry();

class StarshipsController = _StarshipsControllerBase with _$StarshipsController;

abstract class _StarshipsControllerBase with Store {
  @observable
  Box<Starship> _starshipsBox = Hive.box<Starship>(starshipsBox);

  @observable
  List<Starship> starships = [];

  @action
  getStarships({String? nextPage}) async {
    setRes(false);
    if (_starshipsBox.values.isNotEmpty && nextPage == null) {
      starships = _starshipsBox.values.toList();
      setRes(true);
    } else {
      starships = [];
      starships = await _starshipsRepository.fecthStarships(nextPage: nextPage);
      setRes(true);
    }
  }

  @observable
  bool res = true;

  @action
  setRes(value) => res = value;

  @observable
  String searchText = '';

  @action
  setSearchText(value) => searchText = value;

  @observable
  bool showFavorites = false;

  @action
  setShowFavorites(value) {
    if (value == null) {
      showFavorites = !showFavorites;
    } else {
      showFavorites = value;
    }
  }

  @observable
  int starshipSelected = 0;

  @action
  setStarshipSelected(int value) {
    starshipSelected = value;
  }

  @computed
  List<Starship> get filterStarships {
    if (showFavorites) {
      var favorites =
          starships.where((starship) => starship.isFavorite).toList();
      if (searchText == '') {
        return favorites;
      } else {
        return favorites
            .where((starship) => Converters()
                .simplifyString(starship.name)
                .contains(Converters().simplifyString(searchText)))
            .toList();
      }
    } else {
      if (searchText == '') {
        return starships;
      } else {
        return starships
            .where((starship) => Converters()
                .simplifyString(starship.name)
                .contains(Converters().simplifyString(searchText)))
            .toList();
      }
    }
  }

  @observable
  List<Film> films = [];

  setList(widget) {
    films.clear();

    for (var starship in widget.starship.films) {
      films.addAll(_filmsController.films.where((st) => starship == st.url));
    }
  }
}
