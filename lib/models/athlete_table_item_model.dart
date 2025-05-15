import 'dart:convert';

import 'package:football_app/models/medalist_model.dart';
import 'package:football_app/utils/helper_methods.dart';

class AthleteTableItemModel {
  final String athleteName;
  final String sport;
  final String countryFlagPath;
  final Medal medal;

  AthleteTableItemModel({
    required this.athleteName,
    required this.sport,
    required this.countryFlagPath,
    required this.medal,
  });

  Map<String, dynamic> toMap() {
    return {
      'athleteName': athleteName,
      'sport': sport,
      'countryFlagPath': countryFlagPath,
      'medal': getMedalString(medal),
    };
  }

  factory AthleteTableItemModel.fromMap(Map<String, dynamic> map) {
    return AthleteTableItemModel(
      athleteName: map['athleteName'] ?? '',
      sport: map['sport'] ?? '',
      countryFlagPath: map['countryFlagPath'] ?? '',
      medal: getMedalFromString(map['medal'])!,
    );
  }

  String toJson() => json.encode(toMap());

  factory AthleteTableItemModel.fromJson(String source) =>
      AthleteTableItemModel.fromMap(json.decode(source));
}
