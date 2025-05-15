import 'package:flutter/material.dart';
import 'package:football_app/constants/theme_constants.dart';
import 'package:football_app/models/athlete_table_item_model.dart';
import 'package:football_app/utils/helper_methods.dart';

class AthleteTableItem extends StatelessWidget {
  final AthleteTableItemModel athleteItem;
  const AthleteTableItem({super.key, required this.athleteItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 15),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 30,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(athleteItem.countryFlagPath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          SizedBox(
            width: 100,
            child: Text(
              athleteItem.athleteName,
              style: TextStyleConstants.tableItemTextStyle,
              textAlign: TextAlign.left,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(width: 30),
          Text(athleteItem.sport, style: TextStyleConstants.tableItemTextStyle),
          Spacer(),
          Text(
            getMedalEmoji(athleteItem.medal),
            style: TextStyleConstants.tableItemTextStyle,
          ),
        ],
      ),
    );
  }
}
