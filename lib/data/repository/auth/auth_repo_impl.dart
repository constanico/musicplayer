import 'package:dartz/dartz.dart';
import 'package:flutter_musicplayer/data/models/auth/create_user_req.dart';
import 'package:flutter_musicplayer/data/sources/auth/auth_firebase_service.dart';
import 'package:flutter_musicplayer/domain/repository/auth/auth.dart';
import 'package:flutter_musicplayer/service_locator.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    return await sl<AuthFirebaseService>().signup(createUserReq);
  }

}