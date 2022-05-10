import 'package:spacex_graphql/spacex_graphql.dart';
import 'package:spacex_graphql/src/queries/rockets.graphql.dart';

class SpaceXGraphQLRepository {
  const SpaceXGraphQLRepository({required GraphQLClient client})
      : _client = client;

  final GraphQLClient _client;

  Future<QueryFetchRockets?> getRockets() async {
    final data = await _client.queryFetchRockets();

    if (!data.hasException) {
      return data.parsedData;
    } else {
      throw '${data.exception?.linkException}';
    }
  }
}
