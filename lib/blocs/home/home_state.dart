part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(1) int selectedTab,
  }) = _HomeState;
}
