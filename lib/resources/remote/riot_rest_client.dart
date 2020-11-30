import 'package:dio/dio.dart';
import 'package:lol2/models/champions_response.dart';
import 'package:retrofit/http.dart';

part 'riot_rest_client.g.dart';

@RestApi(baseUrl: 'http://ddragon.leagueoflegends.com/')
abstract class RiotRestClient {
  factory RiotRestClient(Dio dio, {String baseUrl}) = _RiotRestClient;

  @GET('/cdn/10.24.1/data/en_US/champion.json')
  Future<ChampionsResponse> getChampions();
}
