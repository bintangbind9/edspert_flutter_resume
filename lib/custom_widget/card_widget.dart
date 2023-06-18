import 'package:edspert_flutter_resume/general.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String titleText;
  final String subTitleText;
  final IconData cardIcon;
  final MaterialColor iconColor;
  const CardWidget(
      {super.key,
      this.titleText = '',
      this.subTitleText = '',
      required this.iconColor,
      required this.cardIcon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 300,
        height: 100,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(cardIcon, color: iconColor, size: 46)),
              Text(titleText, style: cardTitleStyle),
              Text(subTitleText, style: cardSubTitleStyle)
            ],
          ),
        ),
      ),
    );
  }
}
