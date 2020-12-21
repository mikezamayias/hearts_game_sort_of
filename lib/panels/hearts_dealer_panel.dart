import 'package:flutter/material.dart';
import 'package:hearts_game_sort_of/constants.dart';
import 'package:hearts_game_sort_of/labels/human_label.dart';
import 'package:hearts_game_sort_of/widgets/custom_button.dart';

class HeartsDealerPanel extends StatelessWidget {
  const HeartsDealerPanel({
    Key key,
    @required this.flex,
    this.backgroundColor,
    this.memberKind,
  }) : super(key: key);

  final int flex;
  final String backgroundColor;
  final String memberKind;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Card(
        color: coolors[backgroundColor],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 20.0,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HumanLabel(
                flex: 2,
                text: "Dealer",
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                flex: 1,
                text: "Introduce",
                backgroundColor: backgroundColor,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                flex: 1,
                text: "Show deck",
                backgroundColor: backgroundColor,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                flex: 1,
                text: "Deal",
                backgroundColor: backgroundColor,
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                flex: 1,
                text: "Decide winner",
                backgroundColor: backgroundColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
