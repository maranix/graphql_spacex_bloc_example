import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_spacex_bloc_example/home/bloc/home_bloc.dart';

@immutable
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GraphQL Bloc Demo'),
        centerTitle: true,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          switch (state.status) {
            case HomeStatus.initial:
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            case HomeStatus.loaded:
              return Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (_, index) => ListTile(
                        title: Text(
                          '${state.rockets[index]?.name}',
                        ),
                        subtitle: Text(
                          '${state.rockets[index]?.description}',
                        ),
                      ),
                      separatorBuilder: (_, index) =>
                          const SizedBox(height: 10),
                      itemCount: state.rockets.length,
                    ),
                  )
                ],
              );
            case HomeStatus.error:
              return const Center(
                child: Text('Error fetching data from graphql endpoint'),
              );
          }
        },
      ),
    );
  }
}
