import 'package:flutter/material.dart';
import 'package:hearts_game_sort_of/constants.dart';
import 'package:hearts_game_sort_of/panels/hearts_dealer_panel.dart';
import 'package:hearts_game_sort_of/panels/hearts_player_panel.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: coolors["quick silver"],
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HeartsPlayerPanel(
                      flex: 1,
                      backgroundColor: "maya blue",
                      memberKind: 'Player 1',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    HeartsDealerPanel(
                      flex: 2,
                      backgroundColor: "turquoise",
                      memberKind: 'Dealer',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    HeartsPlayerPanel(
                      flex: 1,
                      backgroundColor: "middle red",
                      memberKind: 'Player 2',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
