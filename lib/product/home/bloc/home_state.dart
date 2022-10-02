part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {}

class HomeLoadingState extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoadedState extends HomeState {
  final List myList;


  HomeLoadedState(
    this.myList,
   
  );
  @override
  List<Object?> get props => [myList];
}

class NoConnectivityState extends HomeState {
  @override
  List<Object?> get props => [];
}
