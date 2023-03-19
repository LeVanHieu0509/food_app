import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Config {
  void main() async {
    // We're using HiveStore for persistence,
    // so we need to initialize Hive.
    await initHiveForFlutter();

    final HttpLink httpLink = HttpLink(
      'https://api.github.com/graphql',
    );
    final String _token = "";

    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
      // OR
      // getToken: () => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    );
    // static final WebSocketLink websocketLink = WebSocketLink(
    //   url: 'wss://hasura.io/learn/graphql',
    //   config: SocketClientConfig(
    //     autoReconnect: true,
    //     inactivityTimeout: Duration(seconds: 30),
    //     initPayload: () async {
    //       return {
    //         'headers': {'Authorization': _token},
    //       };
    //     },
    //   ),
    // );
    //static final Link link = authLink.concat(httpLink).concat(websocketLink);

    // static ValueNotifier<GraphQLClient> initailizeClient(String token) {
    //   _token = token;
    //   ValueNotifier<GraphQLClient> client = ValueNotifier(
    //     GraphQLClient(
    //       cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
    //       link: link,
    //     ),
    //   );
    //   return client;
    // }

    final Link link = authLink.concat(httpLink);

    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: link,
        // The default store is the InMemoryStore, which does NOT persist to disk
        cache: GraphQLCache(store: HiveStore()),
      ),
    );
  }
}
