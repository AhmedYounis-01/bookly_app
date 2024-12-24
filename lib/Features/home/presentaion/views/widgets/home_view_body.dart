import 'package:bookly_app/Features/home/presentaion/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentaion/views/widgets/featured_books_list.dart';
import 'package:bookly_app/core/util/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text("Newest Books", style: Styles.textStule18),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: NewestBooksListView(),
          ),
        ),
      ],
    );
  }
}
