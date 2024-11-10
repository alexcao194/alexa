import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../data/auth_repository.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'generated/auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  StreamSubscription? _authChangesSubscription;

  AuthBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const AuthState()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        listenToAuthChanges: (event) => _onListenToAuthChanges(event, emit),
        emitState: (event) => _onEmitState(event, emit),
      );
    });
  }

  _onListenToAuthChanges(event, Emitter<AuthState> emit) async {
    debugPrint('AuthBloc - _onListenToAuthChanges - Listening to auth changes');
    await _authChangesSubscription?.cancel();
    _authChangesSubscription = _authRepository.listenToAuthChanges().listen((account) {
      debugPrint('AuthBloc - _onListenToAuthChanges - Account: $account');
      add(AuthEvent.emitState(AuthState(account: account)));
    });
  }

  _onEmitState(_EmitState event, Emitter<AuthState> emit) {
    emit(event.state);
  }
}
