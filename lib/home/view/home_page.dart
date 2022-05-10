import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_spacex_bloc_example/home/bloc/home_bloc.dart';
import 'package:graphql_spacex_bloc_example/home/view/home_view.dart';
import 'package:spacex_graphql/spacex_graphql.dart';

@immutable
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _repository = RepositoryProvider.of<SpaceXGraphQLRepository>(context);

    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(repository: _repository)
        ..add(
          GetRockets(),
        ),
      child: const HomeView(),
    );
  }
}
