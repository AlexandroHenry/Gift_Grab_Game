import 'dart:async';

import 'package:flame/components.dart';
import 'package:gift_grab_game/constants/globals.dart';
import 'package:gift_grab_game/games/gift_grab_game.dart';

class GiftComponent extends SpriteComponent with HasGameRef<GiftGrabGame> {
  final double _spriteHeight = 200;

  @override
  Future<void> onLoad() async {
    await super.onLoad();

    sprite = await gameRef.loadSprite(Globals.giftSprite);
    height = width = _spriteHeight;
    position = gameRef.size / 2;
    anchor = Anchor.center;
  }
}
