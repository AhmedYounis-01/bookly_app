import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_actions.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_rating_item.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/util/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: SizedBox(
            height: 215,
            width: 180,
            child: CustomBookImage(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
          ),
        ),
        // const SizedBox(height: 42),
        Text(
          book.volumeInfo.title!,
          style: Styles.textStule30.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(
            book.volumeInfo.authors?[0] ?? 'not found author',
            style: Styles.textStule16.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const BookRatingItem(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 10,
          countRating: 10,
        ),
        const SizedBox(
          height: 37,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: BookActions(
            bookModel: book,
          ),
        ),
      ],
    );
  }
}
