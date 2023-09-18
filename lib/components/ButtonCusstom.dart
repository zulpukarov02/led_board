// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:led_board/utils/color_constants.dart';

class ButtonCusstom extends StatefulWidget {
  ButtonCusstom({
    super.key,
    required this.textLRC,
    required this.textLRC2,
  });
  final String textLRC;
  final String textLRC2;

  @override
  State<ButtonCusstom> createState() => _ButtonCusstomState();
}

class _ButtonCusstomState extends State<ButtonCusstom> {
  int selectedFontIndex = 0;

  bool isSelectedcolor = false;

  bool isSelectedcolors = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: isSelectedcolor
                  ? AppConstantsColor.backgroundColor
                  : Colors.blue),
          onPressed: () {
            setState(() {
              isSelectedcolor = true;
              isSelectedcolors = false;
            });
          },
          child: Text(widget.textLRC),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSelectedcolors
                  ? AppConstantsColor.backgroundColor
                  : Colors.blue,
            ),
            onPressed: () {
              setState(() {
                isSelectedcolors = false;
                isSelectedcolor = true;
              });
            },
            child: Text(widget.textLRC2)),
      ],
    );
  }
}
