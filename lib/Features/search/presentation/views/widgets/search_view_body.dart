import 'package:bookly_app/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/core/util/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            "Searched Results",
            style: Styles.textStule18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      // physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 7),
          // child: BestSellerListViewItem(bookModel: ,),
          child: Text("data"),
        );
      },
    );
  }
}
