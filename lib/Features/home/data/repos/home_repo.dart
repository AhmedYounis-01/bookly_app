import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/errors/failture.dart';
import 'package:dartz/dartz.dart';

//! here in repo i determine what function doing ...not implementation here
abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturesBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
