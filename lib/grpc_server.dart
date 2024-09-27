import 'package:grpc/grpc.dart';
import 'package:grpc_server/src/generated/event.pbgrpc.dart';

class EventServiceImpl extends EventServiceBase {
  @override
  Future<EmptyResponse> trackEvent(ServiceCall call, Event request) async {
    print(
      'Evento recebido: ${request.eventName}, '
      'Conteúdo: ${request.eventContent}, '
      'User ID: ${request.userId}',
    );
    return EmptyResponse();
  }
}

Future<void> main() async {
  final server = Server.create(services: [EventServiceImpl()]);

  await server.serve(port: 50051);
  print('Servidor gRPC rodando na porta ${server.port}...');
}
