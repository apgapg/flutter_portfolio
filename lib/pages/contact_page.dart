import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
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
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "CONTACT ME",
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
                            "- EMAIL: ayushpguptaapg@gmail.com"
                            "\n- GITHUB: @apgapg"
                            "\n- INSTAGRAM: @ayushpgupta"
                            "\n- MEDIUM: @ayushpguptaapg"
                            "\n- LINKEDIN: @ayushpgupta",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              height: 2,
                            ),
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        /* Image.asset(
          'assets/images/skills/bike.jpg',
        ),*/
      ],
    );
  }
}
