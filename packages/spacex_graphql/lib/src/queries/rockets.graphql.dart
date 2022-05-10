import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:json_annotation/json_annotation.dart';
part 'rockets.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class QueryFetchRockets {
  QueryFetchRockets({this.rockets, required this.$__typename});

  @override
  factory QueryFetchRockets.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchRocketsFromJson(json);

  final List<QueryFetchRockets$rockets?>? rockets;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryFetchRocketsToJson(this);
  int get hashCode {
    final l$rockets = rockets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rockets == null ? null : Object.hashAll(l$rockets.map((v) => v)),
      l$$__typename
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchRockets) || runtimeType != other.runtimeType)
      return false;
    final l$rockets = rockets;
    final lOther$rockets = other.rockets;
    if (l$rockets != null && lOther$rockets != null) {
      if (l$rockets.length != lOther$rockets.length) return false;
      for (int i = 0; i < l$rockets.length; i++) {
        final l$rockets$entry = l$rockets[i];
        final lOther$rockets$entry = lOther$rockets[i];
        if (l$rockets$entry != lOther$rockets$entry) return false;
      }
    } else if (l$rockets != lOther$rockets) {
      return false;
    }

    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchRockets on QueryFetchRockets {
  QueryFetchRockets copyWith(
          {List<QueryFetchRockets$rockets?>? Function()? rockets,
          String? $__typename}) =>
      QueryFetchRockets(
          rockets: rockets == null ? this.rockets : rockets(),
          $__typename: $__typename == null ? this.$__typename : $__typename);
}

const QUERY_FETCH_ROCKETS = const DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'FetchRockets'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'rockets'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null),
              FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null)
            ])),
        FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null)
      ])),
]);
QueryFetchRockets _parserFnQueryFetchRockets(Map<String, dynamic> data) =>
    QueryFetchRockets.fromJson(data);

class OptionsQueryFetchRockets extends graphql.QueryOptions<QueryFetchRockets> {
  OptionsQueryFetchRockets(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      Duration? pollInterval,
      graphql.Context? context})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            pollInterval: pollInterval,
            context: context,
            document: QUERY_FETCH_ROCKETS,
            parserFn: _parserFnQueryFetchRockets);
}

class WatchOptionsQueryFetchRockets
    extends graphql.WatchQueryOptions<QueryFetchRockets> {
  WatchOptionsQueryFetchRockets(
      {String? operationName,
      graphql.FetchPolicy? fetchPolicy,
      graphql.ErrorPolicy? errorPolicy,
      graphql.CacheRereadPolicy? cacheRereadPolicy,
      Object? optimisticResult,
      graphql.Context? context,
      Duration? pollInterval,
      bool? eagerlyFetchResults,
      bool carryForwardDataOnException = true,
      bool fetchResults = false})
      : super(
            operationName: operationName,
            fetchPolicy: fetchPolicy,
            errorPolicy: errorPolicy,
            cacheRereadPolicy: cacheRereadPolicy,
            optimisticResult: optimisticResult,
            context: context,
            document: QUERY_FETCH_ROCKETS,
            pollInterval: pollInterval,
            eagerlyFetchResults: eagerlyFetchResults,
            carryForwardDataOnException: carryForwardDataOnException,
            fetchResults: fetchResults,
            parserFn: _parserFnQueryFetchRockets);
}

class FetchMoreOptionsQueryFetchRockets extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryFetchRockets({required graphql.UpdateQuery updateQuery})
      : super(updateQuery: updateQuery, document: QUERY_FETCH_ROCKETS);
}

extension ClientExtensionQueryFetchRockets on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryFetchRockets>> queryFetchRockets(
          [OptionsQueryFetchRockets? options]) async =>
      await this.query(options ?? OptionsQueryFetchRockets());
  graphql.ObservableQuery<QueryFetchRockets> watchQueryFetchRockets(
          [WatchOptionsQueryFetchRockets? options]) =>
      this.watchQuery(options ?? WatchOptionsQueryFetchRockets());
  void writeQueryFetchRockets(
          {required QueryFetchRockets data, bool broadcast = true}) =>
      this.writeQuery(
          graphql.Request(
              operation: graphql.Operation(document: QUERY_FETCH_ROCKETS)),
          data: data.toJson(),
          broadcast: broadcast);
  QueryFetchRockets? readQueryFetchRockets({bool optimistic = true}) {
    final result = this.readQuery(
        graphql.Request(
            operation: graphql.Operation(document: QUERY_FETCH_ROCKETS)),
        optimistic: optimistic);
    return result == null ? null : QueryFetchRockets.fromJson(result);
  }
}

@JsonSerializable(explicitToJson: true)
class QueryFetchRockets$rockets {
  QueryFetchRockets$rockets(
      {required this.id,
      required this.name,
      required this.description,
      required this.$__typename});

  @override
  factory QueryFetchRockets$rockets.fromJson(Map<String, dynamic> json) =>
      _$QueryFetchRockets$rocketsFromJson(json);

  final String id;

  final String name;

  final String description;

  @JsonKey(name: '__typename')
  final String $__typename;

  Map<String, dynamic> toJson() => _$QueryFetchRockets$rocketsToJson(this);
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$description = description;
    final l$$__typename = $__typename;
    return Object.hashAll([l$id, l$name, l$description, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (!(other is QueryFetchRockets$rockets) ||
        runtimeType != other.runtimeType) return false;
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) return false;
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) return false;
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) return false;
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) return false;
    return true;
  }
}

extension UtilityExtensionQueryFetchRockets$rockets
    on QueryFetchRockets$rockets {
  QueryFetchRockets$rockets copyWith(
          {String? id,
          String? name,
          String? description,
          String? $__typename}) =>
      QueryFetchRockets$rockets(
          id: id == null ? this.id : id,
          name: name == null ? this.name : name,
          description: description == null ? this.description : description,
          $__typename: $__typename == null ? this.$__typename : $__typename);
}
