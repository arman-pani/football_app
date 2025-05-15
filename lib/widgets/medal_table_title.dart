import 'package:flutter/material.dart';
import 'package:football_app/constants/string_constants.dart';
import 'package:football_app/constants/theme_constants.dart';

class MedalTableTitle extends StatelessWidget {
  const MedalTableTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10),
      child: Row(
        children: [
          Text(
            StringConstants.medalsTableTitle1,
            style: TextStyleConstants.tableTitleTextStyle,
          ),
          SizedBox(width: 10),
          Text(
            StringConstants.medalsTableTitle2,
            style: TextStyleConstants.tableTitleTextStyle,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(3, (value) {
              return Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.bookmark_rounded,
                  color: [Colors.amber, Colors.grey, Colors.brown][value],
                ),
              );
            }),
          ),
          SizedBox(width: 35),
          Text(
            StringConstants.medalsTableTitle3,
            style: TextStyleConstants.tableTitleTextStyle,
          ),
        ],
      ),
    );
  }
}
