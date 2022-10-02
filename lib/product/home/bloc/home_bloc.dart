import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:movie_application/product/home/services/home_service.dart';

import '../model/movie_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeService homeService;
  HomeBloc(this.homeService) : super(HomeLoadingState()) {
    on<LoadApiEvent>((event, emit) async {
      emit(HomeLoadingState());
      final myData = await homeService.getMovies();
      emit(HomeLoadedState(myData!));
    });
  }
}
