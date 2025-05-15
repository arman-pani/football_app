class MedalistModel {
  final String name;
  final String sport;
  final Medal medal;
  final String athletePhotoPath;
  final String flagPhototPath;

  MedalistModel({
    required this.name,
    required this.sport,
    required this.medal,
    required this.athletePhotoPath,
    required this.flagPhototPath,
  });
}

enum Medal { gold, silver, bronze }
