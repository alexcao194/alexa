import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sellar_e_commerce/blocs/home/home_bloc.dart';
import 'package:sellar_e_commerce/data/auth_repository.dart';

import 'blocs/auth/auth_bloc.dart';

class DI {
  static DI? _instance;

  DI._internal();

  factory DI() {
    _instance ??= DI._internal();
    return _instance!;
  }

  final sl = GetIt.instance;

  Future<void> init() async {
    sl.registerFactory<HomeBloc>(() => HomeBloc());

    sl.registerFactory<AuthBloc>(() => AuthBloc(
      authRepository: sl(),
    ));

    sl.registerLazySingleton<AuthRepository>(
      () => AuthRepository(
        googleSignIn: sl(),
      ),
    );

    sl.registerLazySingleton(() => GoogleSignIn(scopes: ['email', 'profile']));
  }
}
