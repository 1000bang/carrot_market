import 'package:carrot_market_ui/screens/main_screen.dart';
import 'package:carrot_market_ui/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarrotMarketUI());
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot_market',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: theme(),
    );
  }
}
