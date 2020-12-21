import 'package:flutter/material.dart';
import 'package:hearts_game_sort_of/labels/human_label.dart';
import 'package:hearts_game_sort_of/panels/base_panel.dart';
import 'package:hearts_game_sort_of/widgets/custom_button.dart';

class HeartsPlayerPanel extends StatelessWidget {
  const HeartsPlayerPanel({
    Key key,
    @required this.flex,
    @required this.backgroundColor,
    @required this.memberKind,
  }) : super(key: key);

  final int flex;
  final String backgroundColor;
  final String memberKind;

  @override
  Widget build(BuildContext context) {
    return BasePanel(
      flex: flex,
      backgroundColor: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HumanLabel(
            flex: 1,
            text: memberKind,
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomButton(
                  flex: 1,
                  text: "Introduce",
                  backgroundColor: backgroundColor,
                ),
                SizedBox(
                  height: 20.0,
                ),
                CustomButton(
                  flex: 1,
                  text: "Show hand",
                  backgroundColor: backgroundColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
