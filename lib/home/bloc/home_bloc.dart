import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:spacex_graphql/spacex_graphql.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final SpaceXGraphQLRepository repository;

  HomeBloc({required this.repository})
      : super(
          const HomeState(status: HomeStatus.initial, rockets: []),
        ) {
    on<GetRockets>((event, emit) async {
      try {
        if (state.status == HomeStatus.initial) {
          final _data = await repository.getRockets();

          return emit(
            state.copyWith(status: HomeStatus.loaded, rockets: _data),
          );
        }
      } catch (_) {
        emit(
          state.copyWith(status: HomeStatus.error),
        );
      }
    });
  }
}
