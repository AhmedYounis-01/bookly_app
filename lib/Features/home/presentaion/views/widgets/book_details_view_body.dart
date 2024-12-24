import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_details_section.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: CustomBookDetailsAppBar(),
              ),
              BookDetailsSection(
                book: bookModel,
              ),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              const SimilarBooksSection(),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        )
      ],
    );
  }
}
