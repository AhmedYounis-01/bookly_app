import 'package:bookly_app/core/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class BookRatingItem extends StatelessWidget {
  const BookRatingItem(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.countRating});
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int countRating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 15,
        ),
        const SizedBox(width: 6.3),
        Text(
          rating.toString(),
          style: Styles.textStule16,
        ),
        const SizedBox(width: 3),
        Opacity(
          opacity: 0.5,
          child: Text(
            "($countRating)",
            style: Styles.textStule14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
