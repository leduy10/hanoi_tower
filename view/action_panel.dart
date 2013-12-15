part of hanoi_tower;

class ActionPanel {

  final Board board;

  ButtonElement restartButton;

  LabelElement difficultyLabel;
  LabelElement difficultyLabelLabel;
  
  LabelElement movesLabel;
  LabelElement movesLabelLabel;
  
  LabelElement timeLabel;
  LabelElement timeLabelLabel;

  ActionPanel(this.board) {
    restartButton = document.querySelector('#restart');
    restartButton.onClick.listen((MouseEvent e) {
      board.restart();
    });

    difficultyLabel = document.querySelector('#difficulty');
    difficultyLabelLabel = document.querySelector('#difficultyLabel');
    
    movesLabel = document.querySelector('#moves');
    movesLabelLabel = document.querySelector('#movesLabel');
    
    timeLabel = document.querySelector('#time');
    timeLabelLabel = document.querySelector('#timeLabel');
  }

  void displayLabels() {
    difficultyLabel.text = "Difficulty: ";
    difficultyLabelLabel.text = board.hanoiTowerModel.difficulty.toString() + " Discs --- ";
    
    movesLabel.text = "Moves: ";
    movesLabelLabel.text = board.hanoiTowerModel.moves.toString() + " --- ";
    
    timeLabel.text = "Time: ";
    timeLabelLabel.text = board.hanoiTowerModel.myTimer.elapsed.toString();
  }

}
