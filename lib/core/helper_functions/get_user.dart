import 'dart:convert';

import 'package:final_project_odc/constants.dart';
import 'package:final_project_odc/core/services/shared_preferences_singleton.dart';
import 'package:final_project_odc/features/auth/data/models/user_model.dart';
import 'package:final_project_odc/features/auth/domain/entites/user_entity.dart';


UserEntity getUser() {
  var jsonString = Prefs.getString(kUserData);
  var userEntity = UserModel.fromJson(jsonDecode(jsonString));
  return userEntity;
}