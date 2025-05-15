import 'package:flutter/material.dart';
import 'package:football_app/constants/string_constants.dart';
import 'package:football_app/constants/theme_constants.dart';

class AthletesTableTitle extends StatelessWidget {
  const AthletesTableTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10, left: 5),
      child: Row(
        children: [
          Text(
            StringConstants.athletesTableTitle1,
            style: TextStyleConstants.tableTitleTextStyle,
          ),
          SizedBox(width: 145),
          Text(
            StringConstants.athletesTableTitle2,
            style: TextStyleConstants.tableTitleTextStyle,
          ),
          Spacer(),
          Text(
            StringConstants.athletesTableTitle3,
            style: TextStyleConstants.tableTitleTextStyle,
          ),
        ],
      ),
    );
  }
}
