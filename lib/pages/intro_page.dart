import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/web_layout.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var body = Flexible(
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
                  "HELLO, I AM",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  "AYUSH P GUPTA",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "IIT Roorkee | Workozy | Mobile + Web Developer | Freelancer | Educator at Unacademy | DIY | DOT | Flute Player",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                  softWrap: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
    var image = Image.asset(
      'assets/images/intro/b2.jpg',
    );
    return WebLayout(
      webLayout: Row(
        children: <Widget>[
          body,
          image,
        ],
      ),
      mobileLayout: Row(
        children: <Widget>[
          body,
        ],
      ),
    );
  }
}
