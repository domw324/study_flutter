import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:dio/src/headers.dart';

part 'StradaClient.g.dart';

@RestApi(baseUrl:'http://ec2-3-35-55-47.ap-northeast-2.compute.amazonaws.com:8080')
abstract class StradaClient {
  factory StradaClient(Dio dio, {String baseUrl}){
    dio.options = BaseOptions(receiveTimeout: 10000, connectTimeout: 10000);
    return _StradaClient(dio, baseUrl: baseUrl);
  }

  // Health
  @GET('/strada/v1/health')
  Future<void> getHealth();

  // Token
  @POST('/strada/v1/account')
  Future<Token> getToken(
      @Field("phoneNumber") String phoneNumber
      );

  // Ping-Pong
  @GET('/ping')
  Future<String> getPong(
      @Header("authorization") String token,
      );
}

@JsonSerializable()
class Token {
  String accessToken;

  Token({
    this.accessToken,
  });

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
  Map<String, dynamic> toJson() => _$TokenToJson(this);
}

// @JsonSerializable()
// class Pong {
//   String pong;
//
//   Pong({
//     this.pong,
//   });
//
//   factory Pong.fromJson(Map<String, dynamic> json) => _$PongFromJson(json);
//   Map<String, String> toJson() => _$PongToJson(this);
// }

