import 'package:ecommerce_order_tile/widgets/custom_icon.dart';
import 'package:ecommerce_order_tile/widgets/custom_text.dart';

import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'image_paths.dart';

class ListTiles{
  static   List<Widget> tiles = [
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: AppColors.kBlackColor.withOpacity(0.2),width: 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText('Order No. 80', 18,AppColors.kPrimaryColor, FontWeight.bold),
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      customIcon(IconPaths.calendar, AppColors.kBlackColor.withOpacity(0.7), 18),
                      const SizedBox(width: 2),
                      customText('15-12-2021', 12,AppColors.kBlackColor, FontWeight.normal),
                    ],
                  ),
                  customText('\$50.0', 15,AppColors.kPrimaryColor, FontWeight.bold),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customIcon(IconPaths.card, AppColors.kBlackColor.withOpacity(0.7), 20),
                  const SizedBox(width: 2),
                  customText('Payment Status - Not Paid', 12,AppColors.kBlackColor, FontWeight.normal),
                  const SizedBox(width: 2),
                  Image.asset(IconPaths.unCheck,height: 12,width: 12,)
                ],
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customIcon(IconPaths.shipping, AppColors.kBlackColor.withOpacity(0.7), 20),
                  const SizedBox(width: 2),
                  Expanded(child: customText('Delivery Status - Order Placed', 12,AppColors.kBlackColor, FontWeight.normal)),
                ],
              ),

            ],
          ),
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(color: AppColors.kBlackColor.withOpacity(0.2),width: 1.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customText('Order No. 80', 18,AppColors.kPrimaryColor, FontWeight.bold),
              const SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      customIcon(IconPaths.calendar, AppColors.kBlackColor.withOpacity(0.7), 18),
                      const SizedBox(width: 2),
                      customText('15-12-2021', 12,AppColors.kBlackColor, FontWeight.normal),
                    ],
                  ),
                  customText('\$800.0', 15,AppColors.kPrimaryColor, FontWeight.bold),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customIcon(IconPaths.card, AppColors.kBlackColor.withOpacity(0.7), 20),
                  const SizedBox(width: 2),
                  customText('Payment Status - Paid', 12,AppColors.kBlackColor, FontWeight.normal),
                  const SizedBox(width: 2),
                  Image.asset(IconPaths.check,height: 12,width: 12,)
                ],
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customIcon(IconPaths.shipping, AppColors.kBlackColor.withOpacity(0.7), 20),
                  const SizedBox(width: 2),
                  Expanded(child: customText('Delivery Status - Order Placed', 12,AppColors.kBlackColor, FontWeight.normal)),
                ],
              ),

            ],
          ),
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child:
                SizedBox(
                    child: Radio(
                      activeColor: AppColors.kPrimaryColor,
                      value: 1,
                      splashRadius: 10,
                      groupValue: 1,
                      onChanged: (newValue) {
                      },
                    )),

              ),
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Expanded(child: customText('Blacksmith, 123456789', 15, AppColors.kBlackColor, FontWeight.bold)),
                          customText('EDIT', 15, AppColors.kPrimaryColor, FontWeight.normal)
                        ]),
                    const SizedBox(height: 5,),
                    customText('House # 58, Block H-1 Block H 1 Phase 2 Johar Town, Lahore, Punjab', 15, AppColors.kBlackColor.withOpacity(0.7), FontWeight.normal),
                    const SizedBox(height: 5,),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          const Spacer(),
                          Container(
                            width: 70,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: AppColors.kPrimaryColor,width: 1)
                            ),
                            child: Center(child: customText('Delete', 12, AppColors.kBlackColor, FontWeight.normal)),
                          )
                        ]),
                  ],
                ),
              ),

            ],
          ),
        ),

      ),
    )

  ];
}