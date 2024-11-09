import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'generated/home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<HomeEvent>((event, emit) async {
      await event.map(
        changeTab: (event) => _onChangeTab(event, emit),
      );
    });
  }

  _onChangeTab(_ChangeTab event, Emitter<HomeState> emit) {
    emit(state.copyWith(selectedTab: event.index));
  }
}
