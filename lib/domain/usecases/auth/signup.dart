import 'package:dartz/dartz.dart';
import 'package:flutter_musicplayer/core/usecase/usecase.dart';
import 'package:flutter_musicplayer/data/models/auth/create_user_req.dart';
import 'package:flutter_musicplayer/domain/repository/auth/auth.dart';
import 'package:flutter_musicplayer/service_locator.dart';

class SignupUseCase implements UseCase<Either,CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq ? params}) async {
    return sl<AuthRepo>().signup(params!);
  }
  
}