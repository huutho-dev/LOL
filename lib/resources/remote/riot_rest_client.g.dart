// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riot_rest_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RiotRestClient implements RiotRestClient {
  _RiotRestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??= 'http://ddragon.leagueoflegends.com/';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<ChampionsResponse> getChampions() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        '/cdn/10.24.1/data/en_US/champion.json',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = ChampionsResponse.fromJson(_result.data);
    return value;
  }
}
