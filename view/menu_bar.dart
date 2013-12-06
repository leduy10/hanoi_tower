part of hanoi_tower;

class MenuBar {

  final Board board;

  // Parking
  ButtonElement disc3Button;
  ButtonElement disc4Button;
  ButtonElement disc5Button;
  ButtonElement disc6Button;
  ButtonElement disc7Button;

  MenuBar(this.board) {

    disc3Button = document.querySelector('#disc3');
    disc4Button = document.querySelector('#disc4');
    disc5Button = document.querySelector('#disc5');
    disc6Button = document.querySelector('#disc6');
    disc7Button = document.querySelector('#disc7');

    disc3Button.onClick.listen((MouseEvent e) {
      board.hanoiTowerModel.initTowers(3);
    });
    disc4Button.onClick.listen((MouseEvent e) {
      board.hanoiTowerModel.initTowers(4);
    });
    disc5Button.onClick.listen((MouseEvent e) {
      board.hanoiTowerModel.initTowers(5);
    });
    disc6Button.onClick.listen((MouseEvent e) {
      board.hanoiTowerModel.initTowers(6);
    });
    disc7Button.onClick.listen((MouseEvent e) {
      board.hanoiTowerModel.initTowers(7);
    });
  }

}
