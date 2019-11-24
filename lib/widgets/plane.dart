import 'package:flutter/material.dart';

class Plane extends StatefulWidget {
  @override
  _PlaneState createState() => _PlaneState();
}

class _PlaneState extends State<Plane> with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;

  bool show = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    controller = AnimationController(
        duration: Duration(milliseconds: 6000), vsync: this);
    final Animation curve =
        CurvedAnimation(parent: controller, curve: Curves.linear);
    animation =
        Tween(begin: 0.0, end: -(MediaQuery.of(context).size.width + 500.0))
            .animate(curve);

    controller.addListener(() {
      setState(() {});
    });
    controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        await Future.delayed(Duration(milliseconds: 100));
        if (controller != null) {
          controller.reset();
          controller.forward();
        }
      } else if (status == AnimationStatus.dismissed) {
        if (controller != null) controller.forward();
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
      alignment: Alignment.center,
      children: <Widget>[
        Transform.translate(
          offset: Offset(
              MediaQuery.of(context).size.width + animation.value ,
              -28.0),
          child: Image.asset(
            'assets/images/plane_text.png',
            height: 100,
          ),
        ),
      ],
    );
  }
}
