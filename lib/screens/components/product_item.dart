import 'package:carrot_market_ui/screens/components/product_detail.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
class ProductItem extends StatelessWidget {
   ProductItem({Key? key, required this.product}) : super(key: key);
final Product product;
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 135.0,
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              product.urlToImage,
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0,),
          Expanded(child: ProductDetail(product: product)),


        ],
      ),

    );
  }
}
