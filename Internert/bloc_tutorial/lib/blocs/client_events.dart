import '../models/client.dart';

abstract class ClientEvent {}

class LoadClientEventn extends ClientEvent {}

class AddClientEvent extends ClientEvent {
  Client client;

  AddClientEvent({
    required this.client,
  });
}

class RemoveClientEvent extends ClientEvent {
  Client client;

  RemoveClientEvent({
    required this.client,
  });
}
