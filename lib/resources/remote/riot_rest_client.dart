import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

@RestApi(baseUrl: 'http://ddragon.leagueoflegends.com/')
abstract class RiotRestClient {
  factory RiotRestClient(Dio dio, {String baseUrl}) = _RiotRestClient;

  @GET('/cdn/10.24.1/data/en_US/champion.json')

}
