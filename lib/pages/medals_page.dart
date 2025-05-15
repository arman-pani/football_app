import 'package:flutter/material.dart';
import 'package:football_app/constants/string_constants.dart';
import 'package:football_app/constants/theme_constants.dart';
import 'package:football_app/widgets/common_appbar.dart';
import 'package:football_app/widgets/toggle_button.dart';

class MedalsPage extends StatefulWidget {
  const MedalsPage({super.key});

  @override
  State<MedalsPage> createState() => _MedalsPageState();
}

class _MedalsPageState extends State<MedalsPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset('assets/images/bg_image.jpg', fit: BoxFit.cover),
        ),
        SafeArea(
          child: Column(
            children: [
              CommonAppbar(),
              SizedBox(height: 20),
              Text(
                StringConstants.medalsPageTitle,
                style: TextStyleConstants.titleTextStyle,
              ),
              SizedBox(height: 10),
              Flexible(
                child: Container(
                  padding: EdgeInsets.only(right: 20, left: 20, top: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),

                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomToggleWidget(
                        labels: [
                          StringConstants.medalsPageTab1,
                          StringConstants.medalsPageTab2,
                          StringConstants.medalsPageTab3,
                        ],
                      ),
                      SizedBox(height: 20),
                      PageView(
                        scrollDirection: Axis.horizontal,
                        children: [MedalsPage()],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
