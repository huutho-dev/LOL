import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lol2/constants.dart';


import 'bloc/home_bloc.dart';
import 'widgets/champion_item_widget.dart';
import 'widgets/champion_kind_tab_widget.dart';
import 'widgets/intro_text_header_widget.dart';
import 'widgets/intro_video_widget.dart';

typedef void ChampionKindSelectedCallback(ChampionKind kind);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (_) => HomeBloc(),
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            IntroVideoWidget(),
            SizedBox(
              height: 24,
            ),
            IntroTextHeaderWidget(),
            SizedBox(
              height: 24,
            ),
            Builder(
              builder: (context) => ChampionKindTabWidget(
                callback: (ChampionKind kind) {
                  context.read<HomeBloc>().add(ChampionsForKindEvent(kind));
                },
              ),
            ),
            BlocBuilder<HomeBloc, HomeState>(
              buildWhen: (pre, curr) => curr is ChampionsByKindState,
              builder: (BuildContext context, state) {

                if (state is ChampionsByKindState &&
                    state.champions.length > 0) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: 0.7,
                        crossAxisCount: 3,
                      ),
                      shrinkWrap: true,
                      itemCount: state.champions.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ChampionItemWidget(
                          champion: state.champions[index],
                        );
                      },
                    ),
                  );
                }
                return Container();
              },
            )
          ],
        ),
      )),
    );
  }
}
