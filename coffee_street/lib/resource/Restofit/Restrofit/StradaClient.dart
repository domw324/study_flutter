import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'StradaClient.g.dart';

@RestApi(baseUrl:'http://ec2-3-35-55-47.ap-northeast-2.compute.amazonaws.com:8080/strada/v1')
abstract class StradaClient {
  factory StradaClient(Dio dio, {String baseUrl}) = _StradaClient;

  @GET('/health.json')
  Future<Health> getHealth();

  // @GET('/v1/health/{id}.json')
  // Future<News> getNewsDetail({@Path() int id});
}

@JsonSerializable()
class Health {
  int state;

  Health({
    this.state,
  });

  factory Health.fromJson(Map<String, dynamic> json) => _$HealthFromJson(json);

  Map<String, dynamic> toJson() => _$HealthToJson(this);
}