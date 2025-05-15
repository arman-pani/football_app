import 'package:flutter/material.dart';
import 'package:football_app/constants/string_constants.dart';
import 'package:football_app/constants/theme_constants.dart';
import 'package:football_app/models/athlete_table_item_model.dart';
import 'package:football_app/models/medal_table_item_model.dart';
import 'package:football_app/utils/fetch_methods.dart';
import 'package:football_app/widgets/athletes_table_item.dart';
import 'package:football_app/widgets/athletes_table_title.dart';
import 'package:football_app/widgets/common_appbar.dart';
import 'package:football_app/widgets/medal_table_item.dart';
import 'package:football_app/widgets/medal_table_title.dart';
import 'package:football_app/widgets/toggle_button.dart';

class MedalsPage extends StatefulWidget {
  const MedalsPage({super.key});

  @override
  State<MedalsPage> createState() => _MedalsPageState();
}

class _MedalsPageState extends State<MedalsPage> {
  late List<MedalTableItemModel> _medalTableItems;
  late Future<void> future = _fetchMedalTableItems();
  late Future<void> future2 = _fetchAthleteTableItems();
  late List<AthleteTableItemModel> _athleteTableItems;

  int _selectedTabIndex = 0;

  List<Widget> tableTitles = [MedalTableTitle(), AthletesTableTitle()];

  @override
  void initState() {
    _fetchMedalTableItems();
    _fetchAthleteTableItems();
    super.initState();
  }

  Future<void> _fetchMedalTableItems() async {
    _medalTableItems = await FetchMethods().fetchMedalsInfo();
  }

  Future<void> _fetchAthleteTableItems() async {
    _athleteTableItems = await FetchMethods().fetchAthletesInfo();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, asyncSnapshot) {
        if (asyncSnapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(color: ColorConstants.redBrown),
          );
        }
        if (asyncSnapshot.hasError) {
          return Center(
            child: Text(
              "Something went wrong: ${asyncSnapshot.error}",
              style: TextStyleConstants.tableItemTextStyle,
            ),
          );
        }
        return SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                clipBehavior: Clip.none,
                pinned: true,
                floating: true,
                surfaceTintColor: ColorConstants.bgColor,
                backgroundColor: ColorConstants.bgColor,
                flexibleSpace: CommonAppbar(),
                foregroundColor: ColorConstants.bgColor,
                bottom: PreferredSize(
                  preferredSize: Size(double.infinity, 150),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    color: ColorConstants.bgColor,
                    child: Column(
                      spacing: 10,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          StringConstants.medalsPageTitle,
                          style: TextStyleConstants.titleTextStyle.copyWith(
                            color: Colors.black,
                          ),
                        ),

                        CustomToggleWidget(
                          labels: [
                            StringConstants.medalsPageTab1,
                            StringConstants.medalsPageTab2,
                            StringConstants.medalsPageTab3,
                          ],
                          onToggle: (index) {
                            setState(() {
                              _selectedTabIndex = index;
                            });
                          },
                        ),
                        tableTitles[_selectedTabIndex],
                      ],
                    ),
                  ),
                ),
              ),

              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),

                sliver: _selectedTabIndex == 0
                    ? MedalsTable(medalTableItemList: _medalTableItems)
                    : AthletesTable(athleteTableItemList: _athleteTableItems),
              ),
            ],
          ),
        );
      },
    );
  }
}

class MedalsTable extends StatelessWidget {
  final List<MedalTableItemModel> medalTableItemList;
  const MedalsTable({super.key, required this.medalTableItemList});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final item = medalTableItemList[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: MedalTableItem(index: index + 1, medalItem: item),
        );
      }, childCount: medalTableItemList.length),
    );
  }
}

class AthletesTable extends StatelessWidget {
  final List<AthleteTableItemModel> athleteTableItemList;

  const AthletesTable({super.key, required this.athleteTableItemList});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final item = athleteTableItemList[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: AthleteTableItem(athleteItem: item),
        );
      }, childCount: athleteTableItemList.length),
    );
  }
}
