import 'package:dartz/dartz.dart';
import 'package:flutter_musicplayer/core/usecase/usecase.dart';
import 'package:flutter_musicplayer/data/models/auth/signin_user_req.dart';
import 'package:flutter_musicplayer/domain/repository/auth/auth.dart';
import 'package:flutter_musicplayer/service_locator.dart';

class SigninUseCase implements UseCase<Either,SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq ? params}) async {
    return sl<AuthRepo>().signin(params!);
  }
  
}