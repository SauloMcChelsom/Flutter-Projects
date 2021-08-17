import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:starwarswiki/app/components/snack_bar_widget.dart';
import 'package:starwarswiki/app/controllers/app_controller.dart';
import 'package:starwarswiki/app/controllers/characters_controller.dart';
import 'package:starwarswiki/app/models/database/people.dart';
import 'package:starwarswiki/app/utils/preferences.dart';
import 'package:starwarswiki/code/config.dart';

StorageUtil _prefs = StorageUtil();

final _appController = Modular.get<AppController>();
final _charactersController = Modular.get<CharactersController>();

class CharactersRepositiry {
  Box<People> _peopleBox = Hive.box<People>(peopleBox);

  Future<List<People>> fecthCharacters({String? nextPage}) async {
    if (_appController.noInternet)
      SnackBarWidget()
          .show(context: _appController.context!, mensagem: 'No internet.');

    List<People> _characters = [];
    bool charge = true;
    String _url = 'https://swapi.dev/api/people/?page=';

    if (nextPage != null) {
      _url = nextPage;
    } else {
      _peopleBox.clear();
    }

    while (charge) {
      var res = await http.get(Uri.parse(_url));
      var json = jsonDecode(res.body);
      List list = json['results'];

      if (json['next'] != null) {
        _url = json['next'].replaceAll('http', 'https');
        _prefs.setString('next_people', _url);
      } else {
        _prefs.setString('next_people', '');
      }

      _characters = _peopleBox.values.toList();

      for (var json in list) {
        final character = People.fromJson(json);
        character.name = character.name.replaceAll('Ã©', 'é');
        _characters.add(character);
        _peopleBox.add(character);
      }
      if (json['next'] == null) {
        charge = false;
      }
      print(_characters.length);
      print(_url);
    }

    return _characters;
  }

  getById(int id) {
    if (id == 0) {
      return null;
    } else {
      var people =
          _charactersController.people.where((person) => person.id == id);
      return people.first;
    }
  }

  setFavorite({required BuildContext context, required int id}) {
    var foundIndex =
        _charactersController.people.indexWhere((person) => person.id == id);
    _charactersController.people[foundIndex].isFavorite =
        !_charactersController.people[foundIndex].isFavorite;
    _peopleBox.putAt(foundIndex, _charactersController.people[foundIndex]);
    _charactersController.people = _peopleBox.values.toList();
    SnackBarWidget().show(
        context: context,
        mensagem:
            '${_charactersController.people[foundIndex].name} has been ${_charactersController.people[foundIndex].isFavorite ? 'added to' : 'removed from'} the favorites list',
        action: 'Undo',
        onPressed: () => setFavorite(context: context, id: id));
  }
}
