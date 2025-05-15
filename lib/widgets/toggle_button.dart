import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';

class CustomToggleWidget extends StatefulWidget {
  final List<String> labels;

  const CustomToggleWidget({super.key, required this.labels});

  @override
  State<CustomToggleWidget> createState() => _CustomToggleWidgetState();
}

class _CustomToggleWidgetState extends State<CustomToggleWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedToggleSwitch<int>.size(
        padding: EdgeInsets.all(7),
        clipBehavior: Clip.none,
        height: 60,
        borderWidth: 0,
        spacing: 5.0,
        current: _selectedIndex,
        values: List.generate(widget.labels.length, (index) => index),
        onChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        inactiveOpacity: 1,
        style: ToggleStyle(
          indicatorColor: Colors.white,
          indicatorBorderRadius: BorderRadius.circular(30),
          borderRadius: BorderRadius.circular(30),
          backgroundGradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.deepOrange],
          ),

          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
          indicatorBoxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
        ),
        indicatorSize: const Size.fromWidth(double.infinity),
        selectedIconScale: 1.0,
        inactiveOpacityCurve: Curves.easeIn,
        iconBuilder: (value) {
          return Center(
            child: Text(
              widget.labels[value],
              style: TextStyle(
                color: _selectedIndex == value ? Colors.black : Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
