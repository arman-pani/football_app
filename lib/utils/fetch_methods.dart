import 'dart:convert';

import 'package:football_app/constants/dummy_data.dart';
import 'package:football_app/models/athlete_table_item_model.dart';
import 'package:football_app/models/medal_table_item_model.dart';

class FetchMethods {
  Future<List<MedalTableItemModel>> fetchMedalsInfo() async {
    final List<dynamic> data = json.decode(tokyo2020MedalsData);
    return data.map((item) => MedalTableItemModel.fromMap(item)).toList();
  }

  Future<List<AthleteTableItemModel>> fetchAthletesInfo() async {
    final List<dynamic> data = json.decode(tokyo2020AthletesData);
    return data.map((item) => AthleteTableItemModel.fromMap(item)).toList();
  }
}
