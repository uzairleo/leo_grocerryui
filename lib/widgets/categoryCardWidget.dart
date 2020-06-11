import 'package:flutter/material.dart';
import '../constants/constants.dart';

class CategoryCardWidget extends StatelessWidget {
  final Function ontap;
  final String weightTag;
  final String itemName;
  final String itemPrice;
  final String asset;
  final favtIcon;
  final favrtIconColor;
  CategoryCardWidget({
    this.asset,
    this.itemName,
    this.itemPrice,
    this.ontap,
    this.weightTag,
    this.favtIcon = Icons.favorite_border,
    this.favrtIconColor = Colors.black26,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          // ontap
          () {
        print("item selected");
      },
      child: Padding(
        padding:
            const EdgeInsets.only(top: 8.0, right: 0, bottom: 8.0, left: 10.0),
        child: Container(
          height: height / 4.2,
          width: width / 3.2,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Stack(
            children: <Widget>[
              Padding(
                //WEIGHT TAG
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height / 48,
                  width: width / 14,
                  color: Colors.black12,
                  child: Center(
                    child: Text(
                      weightTag,
                      style: TextStyle(fontSize: 9.0),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 4.0,
                left: width / 4.13,
                child: GestureDetector(
                  onTap: () {
                    print("add item to favourite list");
                  },
                  child: Icon(
                    favtIcon,
                    size: 18.0,
                    color: favrtIconColor,
                  ),
                ),
              ),
              Positioned(
                top: height / 8.0,
                left: width / 24,
                child: Text(
                  itemName,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.5,
                      color: Colors.black54),
                ),
              ),
              Positioned(
                top: height / 6.4,
                left: width / 24,
                child: Text(
                  itemPrice,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12.5,
                      color: Colors.black),
                ),
              ),
              Positioned(
                  top: height / 25,
                  left: width / 28,
                  child: Container(
                    height: height / 12.8,
                    width: width / 4,
                    decoration: BoxDecoration(
                        // border: Border.all(color:Colors.black),
                        image: DecorationImage(
                            image: AssetImage(asset),
                            // fit: BoxFit.fitHeight,
                            alignment: Alignment.center)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
