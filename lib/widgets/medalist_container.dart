import 'package:flutter/material.dart';
import 'package:football_app/models/medalist_model.dart';

class MedalistContainer extends StatelessWidget {
  final MedalistModel medalist;
  const MedalistContainer({super.key, required this.medalist});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            width: 150,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    medalist.athletePhotoPath,
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -4,
                  right: -4,
                  child: ClipPath(
                    child: Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        border: Border.all(color: Colors.white, width: 4),
                        image: DecorationImage(
                          image: AssetImage(medalist.flagPhototPath),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 60,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    medalist.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    medalist.sport,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),

              Icon(Icons.bookmark, color: Colors.amber, size: 20),
            ],
          ),
        ],
      ),
    );
  }
}

class FlagClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 55, size.height);
    path.lineTo(size.width - 55, size.height - 35);
    path.lineTo(size.width, size.height - 35);
    path.lineTo(size.width, 0);

    // path.arcToPoint(
    //   Offset(size.width - 22, size.height - 22),
    //   radius: Radius.circular(1),
    //   clockwise: false,
    // );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
