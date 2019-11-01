import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/web_layout.dart';

class EducationPage extends StatelessWidget {
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
                  "AN ENGINEER BY PASSION",
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
                  "B.TECH IN CIVIL ENGG.",
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "IIT ROORKEE",
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
                  "(2014 - 2018)",
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
    final image = Image.asset(
      'assets/images/education/roorkee.jpg',
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
