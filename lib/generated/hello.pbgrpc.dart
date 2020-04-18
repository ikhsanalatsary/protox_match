///
//  Generated code. Do not modify.
//  source: hello.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'hello.pb.dart' as $0;
export 'hello.pb.dart';

class HelloClient extends $grpc.Client {
  static final _$greeting =
      $grpc.ClientMethod<$0.HelloRequest, $0.HelloResponse>(
          '/Hello.v1.Hello/Greeting',
          ($0.HelloRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.HelloResponse.fromBuffer(value));

  HelloClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.HelloResponse> greeting($0.HelloRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$greeting, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class HelloServiceBase extends $grpc.Service {
  $core.String get $name => 'Hello.v1.Hello';

  HelloServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.HelloRequest, $0.HelloResponse>(
        'Greeting',
        greeting_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HelloRequest.fromBuffer(value),
        ($0.HelloResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.HelloResponse> greeting_Pre(
      $grpc.ServiceCall call, $async.Future<$0.HelloRequest> request) async {
    return greeting(call, await request);
  }

  $async.Future<$0.HelloResponse> greeting(
      $grpc.ServiceCall call, $0.HelloRequest request);
}
