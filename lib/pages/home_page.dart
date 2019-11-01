import 'package:flutter/material.dart';
import 'package:flutter_portfolio/pages/about_page.dart';
import 'package:flutter_portfolio/pages/contact_page.dart';
import 'package:flutter_portfolio/pages/drawer.dart';
import 'package:flutter_portfolio/pages/education_page.dart';
import 'package:flutter_portfolio/pages/intro_page.dart';
import 'package:flutter_portfolio/pages/skills_page.dart';
import 'package:flutter_portfolio/pages/work_page.dart';
import 'package:preload_page_view/preload_page_view.dart';

class HomePage extends StatelessWidget {
  final _controller = PreloadPageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            LeftDrawer(onItemTap),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: PreloadPageView(
                controller: _controller,
                preloadPagesCount: 1,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  IntroPage(),
                  AboutPage(),
                  EducationPage(),
                  WorkPage(),
                  SkillsPage(),
                  ContactPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onItemTap(int index) {
    _controller.jumpToPage(index);
  }
}
