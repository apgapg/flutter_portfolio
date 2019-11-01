import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final int index;
  final void Function(int index) onItemTap;

  DrawerListTile(this.title, this.index, this.onItemTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            onItemTap(index);
          },
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 24,
            ),
            title: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
