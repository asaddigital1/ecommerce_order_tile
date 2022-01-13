
import 'package:ecommerce_order_tile/constants/app_colors.dart';
import 'package:flutter/material.dart';

typedef RatingChangeCallback = void Function(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color color;

   StarRating({this.starCount = 5, this.rating = .0, required this.onRatingChanged, required this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon =  Icon(
        Icons.star_border,
        color: AppColors.kBlackColor.withOpacity(0.3),
      );
    }
    else if (index > rating - 1 && index < rating) {
      icon =  Icon(
        Icons.star_half,
        color: color
      );
    } else {
      icon =  Icon(
        Icons.star,
        color: color
      );
    }
    return  InkResponse(
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {

    return Wrap(
        children: List.generate(starCount, (index) => buildStar(context, index)));

  }
}