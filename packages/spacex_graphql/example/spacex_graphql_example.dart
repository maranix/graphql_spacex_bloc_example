import 'package:spacex_graphql/spacex_graphql.dart';

void main() async {
  final _client = GraphQLClient(
    link: HttpLink('https://api.spacex.land/graphql/'),
    cache: GraphQLCache(),
  );

  final _gqlRepository = SpaceXGraphQLRepository(client: _client);

  final rockets = await _gqlRepository.getRockets();

  print(rockets);
}
