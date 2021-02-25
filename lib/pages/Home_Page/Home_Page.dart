import 'dart:math';

import 'package:dogalgaz/constants/themeData.dart';
import 'package:flutter/material.dart';

import 'home_page_widgets.dart';

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyData.backColor,
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    //Go to the shop page
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/top.gif',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(
                  child: Container(
                    height: 8,
                    color: Colors.white,
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Icon(Icons.menu, size: 32),
                            SizedBox(width: 8),
                            Image.asset(
                              'assets/images/logo.png',
                              height: 25,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  //Go to my account Page
                                },
                                child: Icon(
                                  Icons.account_circle,
                                  size: 32,
                                )),
                            SizedBox(width: 13),
                            InkWell(
                                onTap: () {
                                  //Go to my cart Page
                                },
                                child: Container(
                                  child: Stack(
                                    children: [
                                      Icon(
                                        Icons.shopping_bag_sharp,
                                        size: 32,
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          padding:
                                              EdgeInsets.fromLTRB(0, 0, 0, 3),
                                          decoration: BoxDecoration(
                                              color: MyData.primaryColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          alignment: Alignment.center,
                                          height: 15,
                                          width: 15,
                                          child: Text(
                                            '3',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: MyData.primaryFont,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  child: Container(
                    height: 8,
                    color: Colors.white,
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black,
                        width: 0,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.search_rounded,
                          color: Colors.grey,
                        ),
                        hintText: 'Search for Products, Categories & Brands',
                        hintStyle: TextStyle(fontFamily: MyData.primaryFont),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Container(
                    height: 8,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  child: Container(
                    height: 5,
                    color: MyData.backColor,
                  ),
                ),
                Container(
                  height: 170,
                  child: HomeTopSliderWidget(),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  color: MyData.backColor,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      color: Colors.white,
                    ),
                    height: 170,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      color: Colors.pink[900],
                                    ),
                                    child: Icon(
                                      Icons.shopping_basket,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                  Text(
                                    'Official Store',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: MyData.primaryFont),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      color: Colors.indigo[900],
                                    ),
                                    child: Transform.rotate(
                                      angle: 70 * pi / 360,
                                      child: Icon(
                                        Icons.airplanemode_active_rounded,
                                        color: Colors.white,
                                        size: 28,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Jumia Global',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: MyData.primaryFont),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      color: Colors.orange,
                                    ),
                                    child: Icon(
                                      Icons.fastfood_rounded,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                  Text(
                                    'Jumia Food',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: MyData.primaryFont),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      color: Colors.green[900],
                                    ),
                                    child: Icon(
                                      Icons.phonelink_erase_rounded,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                  Text(
                                    'Stima Cashback',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: MyData.primaryFont),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          child: Container(
                            width: double.infinity,
                            color: MyData.backColor,
                            margin: EdgeInsets.symmetric(vertical: 10),
                          ),
                          height: 30,
                          width: double.infinity,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      color: Colors.orange[900],
                                    ),
                                    child: Transform.rotate(
                                      angle: -70 * pi / 360,
                                      child: Icon(
                                        Icons.send,
                                        color: Colors.white,
                                        size: 28,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Jumia Express',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: MyData.primaryFont),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      color: Colors.orange[400],
                                    ),
                                    child: Icon(
                                      Icons.stars_rounded,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                  Text(
                                    'Free Delivery',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: MyData.primaryFont),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      color: Color(0xFF01011E),
                                    ),
                                    child: Icon(
                                      Icons.gamepad_outlined,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                  Text(
                                    'Play & Win',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: MyData.primaryFont),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                      color: Colors.yellow[900],
                                    ),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.white,
                                      size: 28,
                                    ),
                                  ),
                                  Text(
                                    'Call To Order',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: MyData.primaryFont),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // GridView.count(
                //     crossAxisCount: 2,
                //     scrollDirection: Axis.vertical,
                //     children: List.generate(10, (index) {
                //       return Center(
                //         child: Container(
                //           decoration: BoxDecoration(
                //             color: Colors.green[800],
                //             border: Border.all(color: Colors.black, width: 2),
                //           ),
                //           padding: EdgeInsets.all(20),
                //           child: Text('Item Number $index',
                //               style: TextStyle(
                //                   fontFamily: MyData.primaryFont,
                //                   color: Colors.white,
                //                   fontSize: 14)),
                //         ),
                //       );
                //     }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
