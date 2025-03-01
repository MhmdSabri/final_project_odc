import 'package:dartz/dartz.dart';
import 'package:final_project_odc/core/errors/failures.dart';
import 'package:final_project_odc/features/auth/domain/entites/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name);

  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password);
  Future addUserData( {required UserEntity user});

  Future <UserEntity> getUserData({required String uid}); 
}
