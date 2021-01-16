// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'StradaClient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Token _$TokenFromJson(Map<String, dynamic> json) {
  return Token(
    accessToken: json['accessToken'] as String,
  );
}

Map<String, dynamic> _$TokenToJson(Token instance) => <String, dynamic>{
      'accessToken': instance.accessToken,
    };

Health _$HealthFromJson(Map<String, dynamic> json) {
  return Health(
    state: json['state'] as String,
  );
}

Map<String, dynamic> _$HealthToJson(Health instance) => <String, dynamic>{
      'state': instance.state,
    };

Pong _$PongFromJson(Map<String, dynamic> json) {
  return Pong(
    pong: json['pong'] as String,
  );
}

Map<String, dynamic> _$PongToJson(Pong instance) => <String, dynamic>{
      'pong': instance.pong,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _StradaClient implements StradaClient {
  _StradaClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??=
        'http://ec2-3-35-55-47.ap-northeast-2.compute.amazonaws.com:8080';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<Token> getToken(phoneNumber) async {
    ArgumentError.checkNotNull(phoneNumber, 'phoneNumber');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'phoneNumber': phoneNumber};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/strada/v1/account.json',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Token.fromJson(_result.data);
    return value;
  }

  @override
  Future<List<Health>> getHealth() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<List<dynamic>>('/strada/v1/health.json',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    var value = _result.data
        .map((dynamic i) => Health.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  @override
  Future<Pong> getPingPong() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>('/ping.json',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Pong.fromJson(_result.data);
    return value;
  }
}
