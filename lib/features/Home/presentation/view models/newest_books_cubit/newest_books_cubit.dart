import 'package:bookly/features/Home/data/repos/home_repo.dart';
import 'package:bookly/features/Home/presentation/view%20models/newest_books_cubit/newest_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitialState());
  HomeRepo homeRepo;

  Future<void> featchNewestBooks() async {
    emit(NewestBooksLoadingState());
    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure) {
      emit(NewestBooksFailureState(errMessage: failure.errormessage));
    }, (books) {
      emit(NewestBooksSuccessState(books: books));
    });
  }
}
