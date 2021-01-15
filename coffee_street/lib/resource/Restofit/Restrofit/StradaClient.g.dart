// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StradaClient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Health _$HealthFromJson(Map<String, dynamic> json) {
  return Health(
    state: json['state'] as int,
  );
}

Map<String, dynamic> _$HealthToJson(Health instance) => <String, dynamic>{
      'state': instance.state,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _StradaClient implements StradaClient {
  _StradaClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??=
        'http://ec2-3-35-55-47.ap-northeast-2.compute.amazonaws.com:8080/strada';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<Health> getHealth() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/v1/health.json',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Health.fromJson(_result.data);
    return value;
  }
}
