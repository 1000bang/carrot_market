import 'package:carrot_market_ui/models/product.dart';
import 'package:carrot_market_ui/screens/components/appbar_preferredSize.dart';
import 'package:carrot_market_ui/screens/components/product_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text("남천제2동",),
              SizedBox(width: 4.0,),
              Icon(CupertinoIcons.chevron_down, size: 15.0)
            ],
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.search)),
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.list_dash)),
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.bell)),

          ],
          bottom: appBarBottomLine(),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return ProductItem(product: productList[index]);
          },
          separatorBuilder: (context, index) {
            return Divider(height: 1,);
          },
          itemCount: productList.length,),

    );
  }
}
