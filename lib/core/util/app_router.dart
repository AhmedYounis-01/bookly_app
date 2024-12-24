import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/home/presentaion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentaion/views/book_details_view.dart';
import 'package:bookly_app/Features/home/presentaion/views/home_view.dart';
import 'package:bookly_app/Features/search/presentation/views/search_view.dart';
import 'package:bookly_app/Features/splash/presentaion/view/splash_view.dart';
import 'package:bookly_app/core/util/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = "/homeView";
  static const kBookDetailsView = "/detailsView";
  static const kSearchView = "/searchView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/detailsView',
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: '/searchView',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
