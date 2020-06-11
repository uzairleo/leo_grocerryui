import 'package:flutter/material.dart';
import '../Tabs/store.dart';
import '../Tabs/favourite-items.dart';
import '../Tabs/user-account.dart';
import '../Tabs/shopping-cart.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> tabIcons = [
    Tab(icon: Icon(Icons.store)),
    Tab(icon: Icon(Icons.shopping_basket)),
    Tab(icon: Icon(Icons.favorite_border)),
    Tab(icon: Icon(Icons.account_circle)),
  ];
  List<Widget> tabWidgets = [
    Store(),//store 
    ShoppingCart(),//shopping_cart
    FavouriteItems(),//favourite
    UserAccount(),//user
  ];
  final appBarbg=Color.fromARGB(255, 42, 192, 126);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabIcons.length,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: appBarbg,
          bottom: TabBar(
            tabs: tabIcons,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black45,
          ),
          title: Text('Store'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.notifications_none), onPressed: () {}),
          ],
        ),
        body: TabBarView(
          children: tabWidgets,
        ),
      ),
    );
  }
}
