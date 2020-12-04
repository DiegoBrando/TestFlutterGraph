import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:flutter/foundation.dart';

GraphQLClient client=GraphQLClient(link: HttpLink(uri: 'http://10.0.2.2:4000/graphql'), cache: InMemoryCache());




class GraphQLCall{


dynamic Query(String query) async {
  var result = await client.query(QueryOptions(pollInterval: 1,documentNode: gql(query)));

  return result.data;

        }

}
GraphQLCall AGraphQLCall= GraphQLCall();


