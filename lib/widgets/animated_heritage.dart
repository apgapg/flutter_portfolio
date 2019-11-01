import 'package:flutter/material.dart';

class AnimatedHeritage extends StatefulWidget {
  @override
  _AnimatedHeritageState createState() => _AnimatedHeritageState();
}

class _AnimatedHeritageState extends State<AnimatedHeritage>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  bool show = false;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    final Animation curve =
        CurvedAnimation(parent: controller, curve: Curves.easeInOut);
    animation = Tween(begin: 3.14 * 0.20, end: -3.14 * 0.20).animate(curve);
    controller.addStatusListener((_) async {
      if (controller.status == AnimationStatus.completed) {
        setState(() {
          show = !show;
        });
        if (controller != null) {
          controller.reset();
          controller.forward();
        }
      }
    });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          height: 40.0,
          width: 100.0,
          color: show ? Colors.red : Colors.yellow,
          margin: EdgeInsets.only(bottom: 4.0),
        ),
        Image.asset(
          'assets/images/lucknow_heritage.png',
          height: 120.0,
        ),
      ],
    );
  }
}
