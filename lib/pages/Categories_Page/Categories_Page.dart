import 'package:flutter/material.dart';

import 'package:dogalgaz/constants/themeData.dart';

class CategoriesPageWidget extends StatelessWidget {
  final products;
  const CategoriesPageWidget({
    Key key,
    @required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      backgroundColor: MyData.backColor,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'My Awesome Shop',
                  style: TextStyle(
                      fontFamily: MyData.primaryFont,
                      color: Colors.white,
                      fontSize: 14),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: (itemWidth / itemHeight),
                mainAxisSpacing: 2,
                crossAxisSpacing: 1,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final product = products[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 230,
                        width: 200,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(product.images),
                              fit: BoxFit.cover),
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        //child: Image.network(product.images[0].src, fit: BoxFit.cover,),
                      ),
                      Text(product.name ?? 'Loading...',
                          style: TextStyle(
                              fontFamily: MyData.primaryFont,
                              color: Colors.white,
                              fontSize: 14)),
                      Text('\$' + product.price ?? '',
                          style: TextStyle(
                              fontFamily: MyData.primaryFont,
                              color: Colors.white,
                              fontSize: 14))
                    ],
                  );
                },
                childCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
