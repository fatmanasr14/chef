import 'package:chefapp/core/database/api/api_consumer.dart';
import 'package:chefapp/core/database/api/endpoint.dart';
import 'package:chefapp/core/errors/exception.dart';
import 'package:chefapp/core/services/service_locator.dart';
import 'package:chefapp/features/auth/data/models/logim_model.dart';
import 'package:dartz/dartz.dart';
class AuthRepository{
  Future<Either<String,LoginModel>> Login({
    required String email,
    required String password,
  })async{
   
   try{ final response=await sl<ApiConsumer>().post(EndPoint.chefSignIn,data: {
      ApiKeys.email:email,
      ApiKeys.password:password
    });
   return Right(LoginModel.fromJson(response));
   }on ServerException catch(error){
  return Left(error.errorModel.errorMessage);
   }
  }
}