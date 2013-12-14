part of hanoi_tower;

class Board {

  // The board is redrawn every INTERVAL ms.
  static const int INTERVAL = 8;

  static final int LINE_WIDTH = 1;
  static final String LINE_COLOR = '#000000'; // black
  static final int SSS = 8; // selection square size

  static final int ROWS_COUNT = 20;
  static final int COLUMNS_COUNT = 75;

  CanvasElement canvas;
  CanvasRenderingContext2D context;

  int width;
  int height;
  int cellWidth;
  int cellHeight;

  HanoiTowerModel hanoiTowerModel;

  MenuBar menuBar;
  ActionPanel actionPanel;

  Board(this.canvas, this.hanoiTowerModel) {
    context = canvas.getContext('2d');
    width = canvas.width;
    height = canvas.height;
    cellWidth = width ~/ COLUMNS_COUNT;
    cellHeight = height ~/ ROWS_COUNT;
    // border();

    menuBar = new MenuBar(this);
    actionPanel = new ActionPanel(this);

    // Canvas event.
    document.querySelector('#canvas').onMouseDown.listen(onMouseDown);
    // Redraw every INTERVAL ms.
    new Timer.periodic(const Duration(milliseconds: INTERVAL), (t) => redraw());
  }

  void redraw() {
    clear();
    hanoiTowerModel.tower1.draw(context, cellWidth, cellHeight);
    hanoiTowerModel.tower2.draw(context, cellWidth, cellHeight);
    hanoiTowerModel.tower3.draw(context, cellWidth, cellHeight);
    hanoiTowerModel.drawWin(context, cellWidth, cellHeight);
    actionPanel.displayLabels();
  }

  void restart() {
    hanoiTowerModel.initTowers(3);
    redraw();
  }

  void clear() {
    context.clearRect(0, 0, width, height);
    // border();
  }

  void border() {
    context.beginPath();
    context.rect(0, 0, width, height);
    context.lineWidth = LINE_WIDTH;
    context.strokeStyle = LINE_COLOR;
    context.stroke();
    context.closePath();
  }

  void onMouseDown(MouseEvent e) {
    int row = e.offset.y ~/ cellHeight;
    int column = e.offset.x ~/ cellWidth;
    hanoiTowerModel.click(row, column);
  }

}
