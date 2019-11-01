import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/web_layout.dart';
import 'package:url_launcher/url_launcher.dart';

class SkillsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final body = Flexible(
      fit: FlexFit.tight,
      flex: 2,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/images/intro/footer.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "MY SKILLS",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "TECH",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "- Expertise in Mobile App Development (Android/iOS) using Flutter SDK"
                        "\n- Worked on NodeJs(Express), PHP for API Development"
                        "\n- Used MongoDb, MySQL databases"
                        "\n- Worked on Angular, VueJs on with Vuetify on Front End Development",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "NON-TECH",
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "- IIT JEE Physics Educator at Unacademy. Published over 22 Courses (377 Lessons) having more than 72k views, 2.5k + Followers"
                        "\n- Flute and Keyboard Player (Instagram: @flute_by_ayushpgupta)"
                        "\n- Loves to sketch and draw arts (Instagram: @arts_by_ayushpgupta)"
                        "\n- Keen passion for bikes and DIY stuffs (Instagram: @diy_by_ayushpgupta)",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      child: Text("@arts_by_ayushpgupta"),
                      onPressed: () async {
                        await launch(
                            "https://www.instagram.com/arts_by_ayushpgupta/");
                      },
                      textColor: Colors.white,
                      color: Colors.blue,
                    ),
                    RaisedButton(
                      child: Text("@diy_by_ayushpgupta"),
                      onPressed: () async {
                        await launch(
                            "https://www.instagram.com/diy_by_ayushpgupta/");
                      },
                      textColor: Colors.white,
                      color: Colors.blue,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
    final image = Image.asset(
      'assets/images/skills/bike.jpg',
    );
    return WebLayout(
      mobileLayout: Row(
        children: <Widget>[
          body,
        ],
      ),
      webLayout: Row(
        children: <Widget>[
          body,
          image,
        ],
      ),
    );
  }
}
