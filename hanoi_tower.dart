library hanoi_tower;

import 'dart:html';
import 'dart:async';

part 'meta/oid.dart';
part 'meta/concept.dart';
part 'meta/concepts.dart';

part 'model/disks.dart';
part 'model/towers.dart';

part 'model/model.dart';

part 'data/init.dart';

part 'view/menu_bar.dart';
part 'view/board.dart';
part 'view/action_panel.dart';


void main() {
  HanoiTowerModel carParkingModel = new HanoiTowerModel();
  // printModel(carParkingModel);

  // Get a reference to the canvas.
  CanvasElement canvas = document.querySelector('#canvas');
  Board board = new Board(canvas, carParkingModel);
}


