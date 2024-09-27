//
//  Generated code. Do not modify.
//  source: event.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'event.pb.dart' as $0;

export 'event.pb.dart';

@$pb.GrpcServiceName('grpc_demo.EventService')
class EventServiceClient extends $grpc.Client {
  static final _$trackEvent = $grpc.ClientMethod<$0.Event, $0.EmptyResponse>(
      '/grpc_demo.EventService/TrackEvent',
      ($0.Event value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));

  EventServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.EmptyResponse> trackEvent($0.Event request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$trackEvent, request, options: options);
  }
}

@$pb.GrpcServiceName('grpc_demo.EventService')
abstract class EventServiceBase extends $grpc.Service {
  $core.String get $name => 'grpc_demo.EventService';

  EventServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Event, $0.EmptyResponse>(
        'TrackEvent',
        trackEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Event.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.EmptyResponse> trackEvent_Pre($grpc.ServiceCall call, $async.Future<$0.Event> request) async {
    return trackEvent(call, await request);
  }

  $async.Future<$0.EmptyResponse> trackEvent($grpc.ServiceCall call, $0.Event request);
}
