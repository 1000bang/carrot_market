import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'package:intl/intl.dart';
class ProductDetail extends StatelessWidget {
   ProductDetail({Key? key, required this.product}) : super(key: key);

   final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(product.title, style: textTheme().bodyText1,),
        const SizedBox(height: 4.0,),
        Text('${product.address}• ${product.publishedAt}'),
        const SizedBox(height: 4.0,),
        Text(numberFormat(product.price)),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Visibility(
                visible: product.commentsCount > 0 ,
                child: _buildIcons(product.commentsCount,
                CupertinoIcons.hand_thumbsup
            )),
            SizedBox(width: 8.0,),
            Visibility(
                visible: product.heartCount > 0,
                child: _buildIcons(product.commentsCount,
                CupertinoIcons.heart
            )),
          ],
        ),

      ],
    );
  }

  Widget _buildIcons(int count, IconData iconData){
    return Row(
      children: [
        Icon(iconData),
        const SizedBox(width: 5,),
        Text("${count}"),
      ],
    );
  }


  String numberFormat(String price){
    final formatter = NumberFormat.currency(locale: "ko_KR", symbol: "₩");

    return formatter.format(int.parse(price));
  }

}
