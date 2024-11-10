part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.listenToAuthChanges() = _ListenToAuthChanges;
  const factory AuthEvent.emitState(AuthState state) = _EmitState;
}
