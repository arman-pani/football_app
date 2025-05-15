import 'package:flutter/material.dart';
import 'package:football_app/constants/string_constants.dart';
import 'package:football_app/constants/theme_constants.dart';
import 'package:football_app/models/medal_table_item_model.dart';
import 'package:football_app/widgets/medal_table_item.dart';

class MedalsTable extends StatelessWidget {
  const MedalsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 5, bottom: 10),
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
              SizedBox(width: 20),
              Text(
                StringConstants.medalsTableTitle3,
                style: TextStyleConstants.tableTitleTextStyle,
              ),
            ],
          ),
        ),

        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: MedalTableItem(
                  index: index + 1,
                  medalItem: MedalTableItemModel(
                    country: 'China',
                    totalGolds: 5,
                    totalSilvers: 10,
                    totalBronses: 12,
                    flagPhotoPath: 'assets/images/bg_image.jpg',
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
