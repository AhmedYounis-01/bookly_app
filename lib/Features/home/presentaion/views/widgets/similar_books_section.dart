import 'package:bookly_app/Features/home/presentaion/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/core/util/styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "You Can also Like.",
            style: Styles.textStule16.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
