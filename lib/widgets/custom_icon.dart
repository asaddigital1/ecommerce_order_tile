import 'package:flutter/cupertino.dart';

Widget customIcon(String path,Color color,double size){
  return ImageIcon(AssetImage(path),color: color,size: size);
}