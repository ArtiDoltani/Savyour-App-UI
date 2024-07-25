import 'package:flutter/material.dart';

class UiHelper{
  // TextField
  static CustomTextField(TextEditingController textEditingController,
   String text, IconData iconData,){
    return TextField(
      
      controller: textEditingController,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
       prefixIcon: Icon(iconData, color: Colors.black,size: 30,),
        hintText: text,
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
      ),
    );
  }
//  Container
  static CustomContainer(double? widthsize, double? heightsize, Widget widget, Color bgcolor){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      width: widthsize,
      height: heightsize,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(15)),
        child: widget,
      ),
    );

  }
  }

  