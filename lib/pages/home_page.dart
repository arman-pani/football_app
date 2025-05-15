import 'package:flutter/material.dart';
import 'package:football_app/constants/string_constants.dart';
import 'package:football_app/constants/theme_constants.dart';
import 'package:football_app/models/medalist_model.dart';
import 'package:football_app/widgets/common_appbar.dart';
import 'package:football_app/widgets/medalist_container.dart';
import 'package:football_app/widgets/toggle_button.dart';
import 'package:football_app/widgets/video_carousel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              VideoCarousel(),
              Text(
                StringConstants.homePageTitle,
                style: TextStyleConstants.titleTextStyle,
              ),
              SizedBox(height: 5),
              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorConstants.bgColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),

                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomToggleWidget(
                        labels: [
                          StringConstants.homeLabel1,
                          StringConstants.homeLabel2,
                        ],
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 220,
                        child: ListView.separated(
                          itemCount: 5,

                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          clipBehavior: Clip.none,
                          itemBuilder: (context, index) {
                            return MedalistContainer(
                              medalist: MedalistModel(
                                name: "Usain Bolt",
                                sport: "Athletics",
                                medal: Medal.bronze,
                                athletePhotoPath:
                                    'assets/images/usain_bolt.jpeg',
                                flagPhototPath:
                                    'assets/images/jamaica_flag.png',
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(width: 20),
                        ),
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
