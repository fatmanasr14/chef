
import 'package:chefapp/core/database/api/endpoint.dart';
import 'package:chefapp/core/database/cacheHelper/cachehelper.dart';
import 'package:chefapp/core/services/service_locator.dart';
import 'package:dio/dio.dart';



class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKeys.token] =
     sl<CacheHelper>().getData(key: ApiKeys.token) 
    != null
        ? 'FOODAPI ${sl<CacheHelper>().getData(key: ApiKeys.token)}'
        : null;
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: implement onError
    super.onError(err, handler);
  }
}