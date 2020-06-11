import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants/constants.dart';

class StoreWidget {
  static Widget header() {
    return Container(
        margin: const EdgeInsets.only(bottom: 8.6),
        width: double.infinity,
        height: height / 4.4,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              offset: Offset(0.0, 12.2), //(x,y)
              blurRadius: 125.6,
              spreadRadius: 0.4,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18.0),
              bottomRight: Radius.circular(18.0)),
        ),
        child: Stack(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 6.0),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: height / 4.56,
                child: ListView.builder(
                    itemCount: listOfAllAvatars.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return listOfAllAvatars[index];
                    }),
              ),
            ),
          ),
          Positioned(
            top: height / 44,
            left: width / 28,
            child: Text("All Categories",
                style: TextStyle(
                  fontSize: 13.0,
                  letterSpacing: 0.2,
                  fontWeight: FontWeight.bold,
                )),
          )
        ]));
  }

  static Widget categorieAvatar(
      {String title, IconData categorieIcon, Function ontap}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
          height: height / 4,
          width: width / 4.6,
          decoration: BoxDecoration(),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 235, 251, 240),
                    radius: 34,
                    child: InkWell(
                      onTap: ontap,
                      child: Center(
                          child: Icon(categorieIcon,
                              color: Color.fromARGB(255, 34, 196, 124))),
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0, top: 6.0),
                  child: Text(title, style: TextStyle(fontSize: 10.8)),
                ),
              ])),
    );
  }

  static List<Widget> listOfAllAvatars = [
    categorieAvatar(
        title: "Household",
        categorieIcon: Icons.home,
        ontap: () {
          print("HomePressed");
        }),
    categorieAvatar(title: "Grocery", categorieIcon: Icons.shopping_cart),
    categorieAvatar(
        title: "Liquour", categorieIcon: FontAwesomeIcons.glassMartiniAlt),
    categorieAvatar(title: "Chilled", categorieIcon: FontAwesomeIcons.cocktail),
    categorieAvatar(
        title: "Beverages", categorieIcon: FontAwesomeIcons.wineBottle),
    categorieAvatar(title: "Diary", categorieIcon: FontAwesomeIcons.hatCowboy),
    categorieAvatar(title: "Meet", categorieIcon: FontAwesomeIcons.goodreads),
    categorieAvatar(title: "others", categorieIcon: Icons.devices_other),
  ];

  static Widget center() {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(color: Color.fromARGB(255, 235, 238, 244)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            header(),
            itemListHeader(title: "Grocery Member Deals"),
            groceryListModel(widgetList: AllList.groceryMemberDeals),
            itemListHeader(title: "Grocery Deals", padding: 2.0),
            groceryListModel(widgetList: AllList.groceryDeals),
            itemListHeader(title: "Trending Deals", padding: 2.05),
            groceryListModel(widgetList: AllList.trendingDeals),
            itemListHeader(title: "Special Sale", padding: 1.86),
            groceryListModel(widgetList: AllList.specialSale),
          ],
        ),
      ),
    );
  }

  static groceryListModel({var widgetList}) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: SizedBox(
        height: height / 4.56,
        child: ListView.builder(
            itemCount: widgetList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return widgetList[index];
            }),
      ),
    );
  }

  static Widget itemListHeader({String title, double padding = 2.87}) {
    return Container(
      height: height / 22,
      width: width,
      // color: Colors.black26,
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
            ),
            child: Text(title,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                )),
          ),
          SizedBox(width: width / padding),
          GestureDetector(
              onTap: () {
                print("View all pressed");
              },
              child: Text(
                "View all >",
                style: TextStyle(
                    letterSpacing: 0.4, fontSize: 13.0, color: Colors.black54),
              ))
        ],
      ),
    );
  }
}
