import 'package:flutter/material.dart';

class WorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "FLUTTER DEVELOPER AT",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Image.asset(
                                'assets/images/work/workozy.png',
                                height: 40,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "workozy",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Field Data and Field Work Management",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                            ),
                            softWrap: true,
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Text(
                            "Responsible for the overall coding, handling and publishing of Android & iOS app build using Flutter SDK.",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                            ),
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/images/work/workozy_track.png',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Image.asset(
          'assets/images/work/office.jpg',
        ),
      ],
    );
  }
}
