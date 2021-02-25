import 'package:dogalgaz/constants/themeData.dart';
import 'package:dogalgaz/pages/Cart_Page/Cart_Page.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter/rendering.dart';
import 'package:woocommerce/woocommerce.dart';
import 'package:woocommerce/models/products.dart';

import 'Account_Page/Acount_Page.dart';
import 'Categories_Page/Categories_Page.dart';
import 'Help_Page/Help_Page.dart';
import 'Home_Page/Home_Page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

String baseUrl = "";
String consumerKey = "";
String consumerSecret = "";

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<WooProduct> products = [];
  List<WooProduct> featuredProducts = [];
  WooCommerce wooCommerce = WooCommerce(
    baseUrl: baseUrl,
    consumerKey: consumerKey,
    consumerSecret: consumerSecret,
    isDebug: true,
  );

  getProducts() async {
    products = await wooCommerce.getProducts();
    setState(() {});
    print(products.toString());
  }

  @override
  void initState() {
    super.initState();
    getProducts();
    _tabController = TabController(vsync: this, length: _kTabPages.length);
  }

  static const _kTabPages = <Widget>[
    HomePageWidget(),
    CategoriesPageWidget(
      products: WooProduct,
    ),
    CartPageWidget(),
    AccountPageWidget(),
    HelpPageWidget(),
  ];

  static var _kTabs = <Tab>[
    Tab(
        child: Text("Home",
            style: TextStyle(
                fontFamily: MyData.primaryFont,
                color: Colors.white,
                fontSize: 14)),
        icon: Icon(Icons.home)),
    Tab(
      child: Text("All",
          style: TextStyle(
              fontFamily: MyData.primaryFont,
              color: Colors.white,
              fontSize: 14)),
      icon: Icon(Icons.list_alt_outlined),
    ),
    Tab(
      child: Text("Cart",
          style: TextStyle(
              fontFamily: MyData.primaryFont,
              color: Colors.white,
              fontSize: 14)),
      icon: Badge(
        shape: BadgeShape.circle,
        badgeColor: Colors.amber,
        borderRadius: BorderRadius.circular(100),
        child: Icon(
          Icons.shopping_bag_sharp,
          size: 28,
        ),
        badgeContent: Text(
          '3',
          style: TextStyle(
            color: Colors.white,
            fontFamily: MyData.primaryFont,
            fontSize: 10,
          ),
        ),
      ),
    ),
    Tab(
        child: Text("Account",
            style: TextStyle(
                fontFamily: MyData.primaryFont,
                color: Colors.white,
                fontSize: 13)),
        icon: Icon(Icons.account_circle_rounded)),
    Tab(
        child: Text("Help",
            style: TextStyle(
                fontFamily: MyData.primaryFont,
                color: Colors.white,
                fontSize: 14)),
        icon: Icon(
          Icons.message_outlined,
        ))
  ];

  // @override
  // void initState() {
  //   super.initState();
  //   _tabController = TabController(
  //     vsync: this,
  //     length: _kTabPages.length,
  //   );
  // }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: _kTabPages,
        controller: _tabController,
      ),
      bottomNavigationBar: Material(
        color: MyData.primaryColor,
        child: TabBar(
          tabs: _kTabs,
          isScrollable: false,
          controller: _tabController,
        ),
      ),
    );
  }
}
