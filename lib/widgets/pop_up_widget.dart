import 'package:flutter/material.dart';
import 'package:hearts_game_sort_of/constants.dart';

class PopUp extends StatelessWidget {
  const PopUp({
    Key key,
    @required this.flex,
    @required this.backgroundColor,
    @required this.text,
  }) : super(key: key);

  final int flex;
  final String backgroundColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: coolors[backgroundColor],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      elevation: 20.0,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
