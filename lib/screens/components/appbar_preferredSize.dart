import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



PreferredSize appBarBottomLine(){
  return PreferredSize(
    preferredSize: Size.fromHeight(0.5),
    child: Divider(thickness: 0.5, height: 0.5,),
  );
}