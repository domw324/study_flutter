import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'StradaClient.g.dart';

@RestApi(baseUrl:'http://ec2-3-35-55-47.ap-northeast-2.compute.amazonaws.com:8080')
abstract class StradaClient {
  factory StradaClient(Dio dio, {String baseUrl}){
    dio.options = BaseOptions(receiveTimeout: 10000, connectTimeout: 10000);
    return _StradaClient(dio, baseUrl: baseUrl);
  }

  // @POST('/strada/v1/account.json')
  // Future<Token> getToken(
  //     @Query("phoneNumber") String phoneNumber
  //     );

  @GET('/strada/v1/health.json')
  Future<Health> getHealth();
  // Future<void> getHealth();

  // @GET('/ping.json')
  // Future<Pong> getPingPong();

  // @GET('/v1/health/{id}.json')
  // Future<News> getNewsDetail({@Path() int id});
}

// @JsonSerializable()
// class Token {
//   String accessToken;
//
//   Token({
//     this.accessToken,
//   });
//
//   factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
//   Map<String, dynamic> toJson() => _$TokenToJson(this);
// }

@JsonSerializable()
class Health {

  Health();

  factory Health.fromJson(Map<String, dynamic> json) => _$HealthFromJson(json);
  Map<String, dynamic> toJson() => _$HealthToJson(this);
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