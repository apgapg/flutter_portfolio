import 'package:flutter/material.dart';

class WebLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget webLayout;

  WebLayout({this.mobileLayout, this.webLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return webLayout;
        } else {
          return mobileLayout;
        }
      },
    );
  }
}
