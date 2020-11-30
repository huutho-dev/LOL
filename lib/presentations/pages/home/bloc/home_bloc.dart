import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lol2/config/injection.dart';
import 'package:lol2/constants.dart';
import 'package:lol2/models/champion_entity.dart';
import 'package:lol2/models/champions_response.dart';
import 'package:lol2/resources/remote/riot_rest_client.dart';


part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final RiotRestClient _riotClient = getIt<RiotRestClient>();

  final _champions = <ChampionsEntity>[];

  HomeBloc() : super(HomeInitial()) {
    add(ChampionLoadedEvent());
  }

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is ChampionLoadedEvent) {
      yield* _getChampions();
      return;
    }

    if (event is ChampionsForKindEvent) {
      yield* _getChampionsByKind(event);
      return;
    }
  }

  Stream<HomeState> _getChampions() async* {
    try {
      final championResponse = await _riotClient.getChampions();
      _champions.clear();
      _champions.addAll(await _convertResponseToListChampion(championResponse));
    } catch (e) {
      // print(e.runtimeType);
      // yield ChampionErrorState(e);
    }
  }

  Stream<HomeState> _getChampionsByKind(ChampionsForKindEvent event) async* {
    final list = <ChampionsEntity>[];
    ChampionKind kind = event.kind;
    _champions.forEach((element) {
      if (element.tags.contains(kind.toString().split('.').last))
        list.add(element);
    });
    yield new ChampionsByKindState(list);
  }

  Future _convertResponseToListChampion(ChampionsResponse championResponse) {
    final completer = Completer();
    final champions = <ChampionsEntity>[];
    championResponse.data.toJson().forEach((key, value) {
      if (value is ChampionsEntity) {
        champions.add(value);
      }
    });
    completer.complete(champions);
    return completer.future;
  }
}
