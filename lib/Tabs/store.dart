import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../widgets/widgets.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
        width: width,
        height: height,
        child: Stack(children: <Widget>[
          StoreWidget.center(),
          StoreWidget.header(),
        ]));
  }
}
