part of 'home_bloc.dart';

enum HomeStatus { initial, loaded, error }

class HomeState extends Equatable {
  const HomeState({
    this.status = HomeStatus.initial,
    this.rockets = const <QueryFetchRockets$rockets?>[],
  });

  final HomeStatus status;
  final List<QueryFetchRockets$rockets?> rockets;

  HomeState copyWith({
    HomeStatus? status,
    List<QueryFetchRockets$rockets?>? rockets,
  }) {
    return HomeState(
      status: status ?? this.status,
      rockets: rockets ?? this.rockets,
    );
  }

  @override
  String toString() {
    return '''PostState { status: $status, rockets: ${rockets.length} }''';
  }

  @override
  List<Object> get props => [status, rockets];
}
