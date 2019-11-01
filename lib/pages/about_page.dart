import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/animated_heritage.dart';
import 'package:flutter_portfolio/widgets/plane.dart';
import 'package:flutter_portfolio/widgets/web_layout.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final body = Flexible(
      fit: FlexFit.tight,
      flex: 2,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Plane(),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          "I AM FROM",
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
                          "LUCKNOW",
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
                          "A City of Nawabs, A City of Tehzeeb.\n\nEver since from childhood, I have been an inseparable part of this 'AAP' culture.",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                          softWrap: true,
                        ),
                      ],
                    ),
                  ),
                  AnimatedHeritage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    final image = Image.asset(
      'assets/images/about/lucknow.jpg',
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
