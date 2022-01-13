import 'package:ecommerce_order_tile/constants/app_colors.dart';
import 'package:ecommerce_order_tile/constants/image_paths.dart';
import 'package:ecommerce_order_tile/widgets/custom_icon.dart';
import 'package:ecommerce_order_tile/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/list.dart';
import 'designs/compare_ui.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tile Design',
        home: CompareProducts(),
      );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child:
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 2.0),
            child: Container(
              width: width * 0.5,
            )

            // ListView.builder(
            //     itemCount: ListTiles.tiles.length,
            //     itemBuilder: (BuildContext contex,int index){
            //   return Padding(
            //       padding: const EdgeInsets.symmetric(vertical: 10),
            //       child: ListTiles.tiles[index]);
            // })
          ),

      ),
    );
  }
}

