import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/book_rating_item.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/custom_book_image.dart';
import 'package:bookly_app/core/util/app_router.dart';
import 'package:bookly_app/core/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context)
          .push(AppRouter.kBookDetailsView, extra: bookModel),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStule20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStule14.copyWith(color: Colors.grey[200]),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "Free",
                        style: Styles.textStule14
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRatingItem(
                        //! here i used pagecount to continue the proj
                        countRating: bookModel.volumeInfo.pageCount!,
                        rating: bookModel.volumeInfo.pageCount!,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
