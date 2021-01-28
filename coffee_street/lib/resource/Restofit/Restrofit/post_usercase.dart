import 'package:coffee_street/resource/Restofit/Restrofit/post.dart';
import 'package:coffee_street/resource/Restofit/Restrofit/server_error.dart';
import 'package:dio/dio.dart' hide Headers;

import 'ApiClient.dart';
import 'base_model.dart';

class PostUsecase {
  Dio dio;
  AutoLogin apiClient;

  PostUsecase() {
    dio = new Dio();
    apiClient = new AutoLogin(dio);
  }

  Future<BaseModel<Post>> getPostFromId(int id) async {
    Post response;
    try {
      response = await apiClient.getPostFromId(id);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return BaseModel()..setException(ServerError.withError(error: error));
    }
    return BaseModel()..data = response;
  }
}