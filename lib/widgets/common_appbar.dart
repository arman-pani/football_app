import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonAppbar extends StatelessWidget {
  const CommonAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          const Spacer(flex: 1),

          Flexible(
            flex: 3,
            child: Container(
              height: 40,
              width: double.infinity,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),

                color: Colors.white,
                shape: BoxShape.rectangle,
              ),
              child: SvgPicture.asset("assets/icons/nike.svg"),
            ),
          ),

          const Spacer(flex: 1),

          Flexible(
            flex: 14,
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: const TextStyle(fontSize: 14),
                  prefixIcon: const Icon(Icons.search, size: 20),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),

          const Spacer(flex: 1),

          Flexible(
            flex: 3,
            child: Container(
              height: 40,
              width: double.infinity,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),

                color: Colors.white,
                shape: BoxShape.rectangle,
              ),
              child: SvgPicture.asset("assets/icons/olympic.svg"),
            ),
          ),

          // Right Spacer
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
