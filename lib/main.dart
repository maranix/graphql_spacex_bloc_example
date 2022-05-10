import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_spacex_bloc_example/home/view/home_page.dart';
import 'package:spacex_graphql/spacex_graphql.dart';

void main() {
  final _client = GraphQLClient(
    link: HttpLink('https://api.spacex.land/graphql/'),
    cache: GraphQLCache(),
  );

  runApp(MyApp(client: _client));
}

@immutable
class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.client}) : super(key: key);

  final GraphQLClient client;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => SpaceXGraphQLRepository(client: client),
      child: MaterialApp(
        title: 'GraphQL Bloc Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
