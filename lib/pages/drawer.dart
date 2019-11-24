import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/drawer_list_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeftDrawer extends StatelessWidget {
  final void Function(int index) onItemTap;

  LeftDrawer(this.onItemTap);

  final list = <String>[
    "INTRO",
    "ABOUT",
    "EDUCATION",
    "WORK",
    "SKILLS",
    "ARTS/SKETCHES",
    "CONTACT"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: double.infinity,
      color: Color(0xFF34495e),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            AvatarGlow(
              endRadius: 80.0,
              duration: Duration(milliseconds: 2000),
              repeat: true,
              repeatPauseDuration: Duration(milliseconds: 100),
              child: Material(
                elevation: 8.0,
                shape: CircleBorder(),
                color: Colors.transparent,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                  radius: 40.0,
                ),
              ),
            ),
            Text(
              "Ayush P Gupta",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.github,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "@apgapg",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            for (int i = 0; i < list.length; i++)
              DrawerListTile(list[i], i, onItemTap),
          ],
        ),
      ),
    );
  }
}
