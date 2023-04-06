import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_tutorial/blocs/client_events.dart';
import 'package:bloc_tutorial/blocs/client_state.dart';
import 'package:bloc_tutorial/repositories/client_repository.dart';

import '../models/client.dart';

class ClientBloc extends Bloc<ClientEvent, ClientState> {
  final _clientRepo = ClientsRepository();

  // final StreamController<ClientEvent> _inputClientController =
  //     StreamController<ClientEvent>();

  // final StreamController<ClientState> _outputClientController =
  //     StreamController<ClientState>();

  // Sink<ClientEvent> get inputClient => _inputClientController.sink;
  // Stream<ClientState> get stream => _outputClientController.stream;

  ClientBloc() : super(ClientInitialState()) {
    // _inputClientController.stream.listen(_mapEventToState);
    on<LoadClientEventn>(
      (event, emit) =>
          emit(ClientSucessState(clients: _clientRepo.loadClients())),
    );

    on<AddClientEvent>(
      (event, emit) =>
          emit(ClientSucessState(clients: _clientRepo.addClient(event.client))),
    );

    on<RemoveClientEvent>(
      (event, emit) => emit(
          ClientSucessState(clients: _clientRepo.removeClient(event.client))),
    );
  }

  // _mapEventToState(ClientEvent event) {
  //   List<Client> clients = [];
  //   if (event is LoadClientEventn) {
  //     clients = _clientRepo.loadClients();
  //   } else if (event is AddClientEvent) {
  //     clients = _clientRepo.addClient(event.client);
  //   } else if (event is RemoveClientEvent) {
  //     clients = _clientRepo.removeClient(event.client);
  //   }

  //   _outputClientController.add(ClientSucessState(clients: clients));
  // }
}
