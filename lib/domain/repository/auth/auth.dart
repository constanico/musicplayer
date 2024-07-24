import 'package:dartz/dartz.dart';
import 'package:flutter_musicplayer/data/models/auth/create_user_req.dart';
import 'package:flutter_musicplayer/data/models/auth/signin_user_req.dart';

abstract class AuthRepo {
  Future<Either> signup(CreateUserReq createUserReq);
  Future<Either> signin(SigninUserReq signinUserReq);
}