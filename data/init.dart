part of hanoi_tower;

HanoiTowerModel model;
final int END_ROW = 18;

init(HanoiTowerModel hanoiTowerModel) {
  model = hanoiTowerModel;
  model.initTowers(3);
}
