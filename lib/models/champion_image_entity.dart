import 'package:json_annotation/json_annotation.dart';

part 'champion_image_entity.g.dart';

@JsonSerializable(nullable: true)
class ChampionImage {
  @JsonKey(name: "full")
  String full;

  @JsonKey(name: "sprite")
  String sprite;

  @JsonKey(name: "group")
  String group;

  @JsonKey(name: "x")
  int x;

  @JsonKey(name: "y")
  int y;

  @JsonKey(name: "w")
  int w;

  @JsonKey(name: "h")
  int h;

  ChampionImage(
      {this.full, this.sprite, this.group, this.x, this.y, this.w, this.h});

  factory ChampionImage.fromJson(Map<String, dynamic> json) =>
      _$ChampionImageFromJson(json);

  Map<String, dynamic> toJson() => _$ChampionImageToJson(this);
}
