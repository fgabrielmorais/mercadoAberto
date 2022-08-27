import 'dart:developer';
import 'package:dio/dio.dart';


class API {
  static final _dio = createDio();
  static final _baseAPI = addInterceptors(_dio);

  static BaseOptions opts = BaseOptions(
      // baseUrl: ,
      responseType: ResponseType.json,
      connectTimeout: 30000,
      receiveTimeout: 30000,
      validateStatus: (code) {
        if (code! >= 200) {
          return true;
        }
        return false;
      });

  static Dio createDio() {
    return Dio(opts);
  }

  static Dio addInterceptors(Dio dio) {
    dio.interceptors.clear();
    return dio
      ..interceptors.add(InterceptorsWrapper(
          onRequest: _requestHandler,
          onResponse: _responseHandler,
          onError: _errorHandler));
  }

  static _requestHandler(options, handler) async {
    log("=====REQUISIÇÃO=====");
    log("${options.method.toString()} ${options.uri.toString()}");
    log(options.queryParameters.toString());
    log(options.data.toString());
    log(options.headers.toString());
    options.headers.addAll({
      "Accept-language": "es",
    });
    log("=====FIM REQUISIÇÃO=====");
    return handler.next(options);
  }

  static _responseHandler(
      Response response, ResponseInterceptorHandler handler) {
    log("=====RESPOSTA=====");
    log(response.data.toString());
    log(response.statusCode.toString());
    log("=====FIM RESPOSTA=====");

    return handler.next(response);
  }

  static _errorHandler(DioError err, handler) async {
    log("=====ERRO=====");

    switch (err.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions);
          case 401:
            throw UnauthorizedException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        throw NoInternetConnectionException(err.requestOptions);
    }

    log("=====FIM ERRO=====");

    return handler.next(err);
  }

  Future<Response?> get(String url, {dynamic data, Options? options}) async {
    try {
      Response response =
          await _baseAPI.get(url, queryParameters: data, options: options);

      return response;
    } catch (error) {
      rethrow;
    }
  }

  Future<Response?> post(String url, {dynamic data, Options? options}) async {
    try {
      Response response =
          await _baseAPI.post(url, data: data, options: options);

      return response;
    } catch (error) {
      rethrow;
    }
  }

  Future<Response?> put(String url, {dynamic data, Options? options}) async {
    try {
      Response response = await _baseAPI.put(url, data: data, options: options);

      return response;
    } catch (error) {
      rethrow;
    }
  }

  Future<Response?> delete(String url,
      {dynamic data, dynamic query, Options? options}) async {
    try {
      Response response = await _baseAPI.delete(url,
          data: data, queryParameters: query, options: options);

      return response;
    } catch (error) {
      rethrow;
    }
  }

  Future<Response?> patch(String url,
      {dynamic data, dynamic query, Options? options}) async {
    try {
      Response response = await _baseAPI.patch(url,
          data: data, queryParameters: query, options: options);

      return response;
    } catch (error) {
      rethrow;
    }
  }
}

class BadRequestException extends DioError {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Requisição inválida!';
  }
}

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Ocorreu um erro desconhecido, por favor tente novamente mais tarde!';
  }
}

class ConflictException extends DioError {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Ocorreu um conflito!';
  }
}

class UnauthorizedException extends DioError {
  UnauthorizedException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Acesso negado!';
  }
}

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'A informação requisitada não foi encontrada!';
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Não foi detectada conexão com a internet, tente novamente mais tarde!';
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'A requisição demorou demais e foi finalizada, tente novamente mais tarde!';
  }
}
