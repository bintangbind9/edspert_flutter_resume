import 'package:edspert_flutter_resume/custom_widget/card_widget.dart';
import 'package:edspert_flutter_resume/general.dart';
import 'package:edspert_flutter_resume/personal_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bintang\'s Profile', style: appBarTitleStyle),
        centerTitle: true,
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          const CardWidget(
            cardIcon: Icons.book,
            iconColor: Colors.green,
            titleText: 'Politeknik Meta Industri',
            subTitleText: 'Study',
          ),
          const CardWidget(
            cardIcon: Icons.work,
            iconColor: Colors.red,
            titleText: '2 Years',
            subTitleText: 'Work Experiences',
          ),
          const CardWidget(
            cardIcon: Icons.star,
            iconColor: Colors.yellow,
            titleText: '2 (total)',
            subTitleText: 'Certificates',
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PersonalScreen(),
                    ));
              },
              child: const CardWidget(
                cardIcon: Icons.chevron_right,
                iconColor: Colors.brown,
                titleText: 'More..',
                subTitleText: 'Show profile more',
              ))
        ],
      ),
    );
  }
}
