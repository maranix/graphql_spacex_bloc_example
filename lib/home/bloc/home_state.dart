part of 'home_bloc.dart';

enum HomeStatus { unknown, loading, loaded, error }

abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}
