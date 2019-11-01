import 'package:flutter/material.dart';
import 'package:flutter_portfolio/pages/about_page.dart';
import 'package:flutter_portfolio/pages/contact_page.dart';
import 'package:flutter_portfolio/pages/drawer.dart';
import 'package:flutter_portfolio/pages/education_page.dart';
import 'package:flutter_portfolio/pages/intro_page.dart';
import 'package:flutter_portfolio/pages/skills_page.dart';
import 'package:flutter_portfolio/pages/work_page.dart';
import 'package:flutter_portfolio/widgets/web_layout.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    var drawer = LeftDrawer(onItemTap);
    var body = PageView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        IntroPage(),
        AboutPage(),
        EducationPage(),
        WorkPage(),
        SkillsPage(),
        ContactPage(),
      ],
    );
    return WebLayout(
      mobileLayout: Scaffold(
        body: body,
        drawer: drawer,
        appBar: AppBar(
          title: Text("My Portfolio"),
          elevation: 1,
          backgroundColor: Color(0xFF34495e),
        ),
      ),
      webLayout: Scaffold(
        body: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              drawer,
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: body,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItemTap(int index) {
    _controller.jumpToPage(index);
  }
}
