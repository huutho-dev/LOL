part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class ChampionLoadingState extends HomeState {}

class ChampionSuccessState extends HomeState {
  final List<ChampionsEntity> champions;

  ChampionSuccessState(this.champions);
}

class ChampionErrorState extends HomeState {
  final Exception e;

  ChampionErrorState(this.e);
}

class ChampionsByKindState extends HomeState {
  final List<ChampionsEntity> champions;
  ChampionsByKindState(this.champions);

  @override
  List<Object> get props => champions;
}
