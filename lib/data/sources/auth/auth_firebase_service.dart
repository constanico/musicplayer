import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_musicplayer/data/models/auth/create_user_req.dart';

abstract class AuthFirebaseService {
  Future<Either> signup(CreateUserReq createUserReq);
  Future<void> signin();
}

class AuthFirebaseServiceImpl extends AuthFirebaseService {
  @override
  Future<void> signin() {
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: createUserReq.email,
        password: createUserReq.password
      );
      return const Right('Signup was Successful');
    } on FirebaseAuthException catch(e) {
      String msg = '';

      if(e.code == 'weak-password') {
        msg = 'The password provided is too weak';
      } else if(e.code == 'email-already-in-use') {
        msg = 'An account already exists with this email';
      }

      return Left(msg);
    }
  }
  
}