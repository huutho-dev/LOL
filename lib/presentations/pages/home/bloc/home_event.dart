part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ChampionLoadedEvent extends HomeEvent {}

class ChampionsForKindEvent extends HomeEvent {
  final ChampionKind kind;

  ChampionsForKindEvent(this.kind);
}
