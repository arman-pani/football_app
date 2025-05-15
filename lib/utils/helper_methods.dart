import 'package:football_app/models/medalist_model.dart';

Medal? getMedalFromString(String medalString) {
  switch (medalString) {
    case 'Gold':
      return Medal.gold;
    case 'Silver':
      return Medal.silver;
    case 'Bronze':
      return Medal.bronze;
    default:
      return null;
  }
}

String getMedalString(Medal medal) {
  switch (medal) {
    case Medal.gold:
      return 'Gold';
    case Medal.silver:
      return 'Silver';
    case Medal.bronze:
      return 'Bronze';
  }
}

String getMedalEmoji(Medal medal) {
  switch (medal) {
    case Medal.gold:
      return '🥇';
    case Medal.silver:
      return '🥈';
    case Medal.bronze:
      return '🥉';
  }
}
