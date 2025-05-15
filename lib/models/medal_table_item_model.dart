import 'dart:convert';

class MedalTableItemModel {
  final String country;
  final int totalGolds;
  final int totalSilvers;
  final int totalBronses;
  final String flagPhotoPath;

  MedalTableItemModel({
    required this.country,
    required this.totalGolds,
    required this.totalSilvers,
    required this.totalBronses,
    required this.flagPhotoPath,
  });

  Map<String, dynamic> toMap() {
    return {
      'country': country,
      'totalGolds': totalGolds,
      'totalSilvers': totalSilvers,
      'totalBronses': totalBronses,
      'flagPhotoPath': flagPhotoPath,
    };
  }

  factory MedalTableItemModel.fromMap(Map<String, dynamic> map) {
    return MedalTableItemModel(
      country: map['countryName'] ?? '',
      totalGolds: map['totalGolds']?.toInt() ?? 0,
      totalSilvers: map['totalSilvers']?.toInt() ?? 0,
      totalBronses: map['totalBronses']?.toInt() ?? 0,
      flagPhotoPath: map['countryFlagPath'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MedalTableItemModel.fromJson(String source) =>
      MedalTableItemModel.fromMap(json.decode(source));
}
