import 'package:flutter_musicplayer/data/repository/auth/auth_repo_impl.dart';
import 'package:flutter_musicplayer/data/sources/auth/auth_firebase_service.dart';
import 'package:flutter_musicplayer/domain/repository/auth/auth.dart';
import 'package:flutter_musicplayer/domain/usecases/auth/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl()
  );

  sl.registerSingleton<AuthRepo>(
    AuthRepoImpl()
  );

  sl.registerSingleton<SignupUseCase>(
    SignupUseCase()
  );
}