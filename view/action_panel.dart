part of hanoi_tower;

class ActionPanel {

  final Board board;

  ButtonElement restartButton;

  LabelElement difficultyLabel;
  LabelElement difficultyLabelLabel;

  ActionPanel(this.board) {
    restartButton = document.querySelector('#restart');
    restartButton.onClick.listen((MouseEvent e) {
      board.restart();
    });

    difficultyLabel = document.querySelector('#difficulty');
    difficultyLabelLabel = document.querySelector('#difficultyLabel');
  }

  void displayLabels() {
    difficultyLabel.text = "Difficulty: ";
    difficultyLabelLabel.text = board.hanoiTowerModel.difficulty.toString() + " Discs";
  }

}
