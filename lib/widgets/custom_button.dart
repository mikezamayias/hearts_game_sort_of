import 'package:flutter/material.dart';
import 'package:hearts_game_sort_of/widgets/pop_up_widget.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.flex,
    @required this.text,
    @required this.backgroundColor,
  }) : super(key: key);

  final int flex;
  final String text;
  final String backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      child: FlatButton(
        onPressed: () => showDialog(
          context: context,
          barrierColor: coolors[backgroundColor],
          barrierDismissible: true,
          builder: (_) => AlertDialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            content: Align(
              alignment: Alignment.topCenter,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: coolors['white'],
                ),
              ),
            ),
          ),
        ),
        color: coolors["beige"],
        hoverColor: Colors.amber[200],
        focusColor: Colors.amber[200],
        highlightColor: coolors['beige'],
        splashColor: coolors[backgroundColor],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
