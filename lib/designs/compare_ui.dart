import 'package:ecommerce_order_tile/constants/app_colors.dart';
import 'package:ecommerce_order_tile/widgets/ratings.dart';
import 'package:flutter/material.dart';

class CompareProducts extends StatefulWidget {
  const CompareProducts({Key? key}) : super(key: key);

  @override
  _CompareProductsState createState() => _CompareProductsState();
}

class _CompareProductsState extends State<CompareProducts> {
  double rating = 3.3;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
            child: SingleChildScrollView(
              child:
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Container(
                  width: width * 0.6,
                  decoration: const BoxDecoration(
                    color: Colors.white
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20),
                        Wrap(
                          children: const [
                            Icon(Icons.clear,size: 25,color: AppColors.kPrimaryColor,),
                            SizedBox(width: 15),
                            Text('Remove',style: TextStyle(color: AppColors.kPrimaryColor,fontSize: 20,fontWeight: FontWeight.w400),)
                          ],
                        ),
                        const SizedBox(height: 25),
                        Image.asset('assets/images/p3.png',height: 150,width: 150,),
                        const SizedBox(height: 40),
                        StarRating(rating: rating,color: AppColors.kPrimaryColor, onRatingChanged: (rating) => setState(() => rating = rating),),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child: Text('Apple Iphone 13 Pro Max Blue',style: TextStyle(color: AppColors.kBlackColor,fontSize: 15,fontWeight: FontWeight.w500),textAlign: TextAlign.center,)),
                        Wrap(
                          children:  [
                            Text('\$1200',style: TextStyle(color: AppColors.kBlackColor.withOpacity(0.5),fontSize: 15,decoration: TextDecoration.lineThrough),),
                            const SizedBox(width: 10,),
                            const Text('\$1000',style: TextStyle(color: AppColors.kPrimaryColor,fontSize: 17,fontWeight: FontWeight.w600),)
                          ],
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Expanded(
                                      flex: 3,child: Text('Expandable Storage:',style: TextStyle(color: AppColors.kBlackColor,fontSize: 15),)),
                                  SizedBox(width: 10,),
                                  Text('64 GB',style: TextStyle(color: AppColors.kBlackColor,fontSize: 16,fontWeight: FontWeight.w600),)
                                ],
                              ),
                        ),
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Expanded(child: Text('Color:',style: TextStyle(color: AppColors.kBlackColor,fontSize: 15),)),
                              SizedBox(width: 10,),
                              Text('Blue',style: TextStyle(color: AppColors.kBlackColor,fontSize: 16,fontWeight: FontWeight.w600))
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              const Text('Made in',style: TextStyle(color: AppColors.kBlackColor,fontSize: 16),),
                              const SizedBox(width: 10),
                              Text('-',style: TextStyle(color: AppColors.kBlackColor.withOpacity(0.5),fontSize: 16),)
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text('Warranty',style: const TextStyle(color: AppColors.kBlackColor,fontSize: 16),),
                              const SizedBox(width: 10),
                              Text('-',style: TextStyle(color: AppColors.kBlackColor.withOpacity(0.5),fontSize: 16),)
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              const Text('Guarantee',style: TextStyle(color: AppColors.kBlackColor,fontSize: 16),),
                              const SizedBox(width: 10),
                              Text('-',style: TextStyle(color: AppColors.kBlackColor.withOpacity(0.5),fontSize: 16),)
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              const Text('Returnable',style: TextStyle(color: AppColors.kBlackColor,fontSize: 16),),
                              const SizedBox(width: 10),
                              Text('No',style: TextStyle(color: AppColors.kBlackColor.withOpacity(0.5),fontSize: 16),)
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              const Expanded(child: Text('Cancellable',style: TextStyle(color: AppColors.kBlackColor,fontSize: 16),maxLines: 1,)),
                              const SizedBox(width: 10),
                              Text('Till Shipped',style: TextStyle(color: AppColors.kBlackColor.withOpacity(0.5),fontSize: 16),)
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),


                      ],
                    ),
                  ),
                ),
              ),
            )


      ),
    );
  }
}
