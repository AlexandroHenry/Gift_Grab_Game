import 'package:flame/game.dart';
import 'package:gift_grab_game/components/background_component.dart';
import 'package:gift_grab_game/components/gift_component.dart';
import 'package:gift_grab_game/components/santa_component.dart';
import 'package:gift_grab_game/inputs/joystick.dart';

// To Use JoyStick We have to add a mix into our game class
// called HasDraggables. It can detect when we're using dragging
// features in the app.
//
class GiftGrabGame extends FlameGame with HasDraggables {
  @override
  Future<void> onLoad() async {
    await super.onLoad();

    add(BackgroundComponent());

    add(SantaComponent(joystick: joystick));

    add(GiftComponent());

    add(joystick);
  }
}
