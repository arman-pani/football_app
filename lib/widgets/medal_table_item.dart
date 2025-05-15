import 'package:flutter/material.dart';
import 'package:football_app/constants/theme_constants.dart';
import 'package:football_app/models/medal_table_item_model.dart';

class MedalTableItem extends StatelessWidget {
  final int index;
  final MedalTableItemModel medalItem;
  const MedalTableItem({
    super.key,
    required this.medalItem,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final medalList = [
      medalItem.totalGolds,
      medalItem.totalSilvers,
      medalItem.totalBronses,
    ];
    return Container(
      padding: EdgeInsets.only(left: 5, right: 15),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: ColorConstants.bgColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    index.toString(),
                    style: TextStyleConstants.tableItemTextStyle,
                  ),
                ),
              ),
              SizedBox(width: 15),
              Container(
                height: 30,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(medalItem.flagPhotoPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 6),
              Text(
                medalItem.country,
                style: TextStyleConstants.tableItemTextStyle,
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(3, (value) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: Text(
                  medalList[value].toString(),
                  style: TextStyleConstants.tableItemTextStyle,
                ),
              );
            }),
          ),
          Spacer(),
          Text(
            medalList.reduce((a, b) => a + b).toString(),
            style: TextStyleConstants.tableItemTextStyle,
          ),
        ],
      ),
    );
  }
}
