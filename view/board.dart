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

  HanoiTowerModel carParkingModel;
  Tower _currentParking;

  MenuBar menuBar;
  ActionPanel actionPanel;

  Board(this.canvas, this.carParkingModel) {
    context = canvas.getContext('2d');
    width = canvas.width;
    height = canvas.height;
    cellWidth = width ~/ COLUMNS_COUNT;
    cellHeight = height ~/ ROWS_COUNT;
    // border();

    menuBar = new MenuBar(this);
    actionPanel = new ActionPanel(this);

    currentParking = carParkingModel.parkings.elementAt(0);

    // Canvas event.
    document.querySelector('#canvas').onMouseDown.listen(onMouseDown);
    // Redraw every INTERVAL ms.
    new Timer.periodic(const Duration(milliseconds: INTERVAL), (t) => redraw());
  }

  void set currentParking(Tower parking) {
    _currentParking = parking;
    actionPanel.displayCurrentParking();
  }

  Tower get currentParking {
    return _currentParking;
  }

  void redraw() {
    clear();
    displayTowers();
    displayCars();
  }

  void restart() {
    for (Disk car in currentParking.disks) {
      car.currentRow = car.startRow;
      car.currentColumn = car.startColumn;
      car.selected = false;
    }
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

  void displayCars() {
    for (Disk car in currentParking.disks) {
      displayCar(car);
    }
  }

  void displayCar(Disk car) {
    context.beginPath();
    int row = car.currentRow;
    int column = car.currentColumn;
    int x = column * cellWidth;
    int y = row * cellHeight;
    int carLength = car.length;
    int carWidth = cellWidth;
    int carHeight = cellHeight;
    carWidth = cellWidth * carLength;
    context.lineWidth = LINE_WIDTH;
    context.strokeStyle = LINE_COLOR;
    context.fillStyle = car.color;
    // context.rect(x, y , carWidth, carHeight);
    context.fillRect(x, y , carWidth, carHeight);
    if (car.selected) {
      context.rect(x, y, SSS, SSS);
      context.rect(x + carWidth - SSS, y, SSS, SSS);
      context.rect(x + carWidth - SSS, y + carHeight - SSS, SSS, SSS);
      context.rect(x, y + carHeight - SSS, SSS, SSS);
    }
    context.stroke();
    context.closePath();
  }
  
  void displayTowers() {
    //Display of first tower
    context.beginPath();
    context.lineWidth = LINE_WIDTH;
    context.strokeStyle = LINE_COLOR;
    context.fillStyle = LINE_COLOR;
    context.fillRect(6.25 * cellWidth, 10 * cellHeight , cellWidth / 2, 10 * cellHeight);
    context.stroke();
    context.closePath();
    
    context.beginPath();
    context.lineWidth = LINE_WIDTH;
    context.strokeStyle = LINE_COLOR;
    context.fillStyle = LINE_COLOR;
    context.fillRect(0 * cellWidth, 19.25 * cellHeight , cellWidth * 13, cellHeight * 0.75);
    context.stroke();
    context.closePath();
    
    //Display of second tower
    context.beginPath();
    context.lineWidth = LINE_WIDTH;
    context.strokeStyle = LINE_COLOR;
    context.fillStyle = LINE_COLOR;
    context.fillRect(21.25 * cellWidth, 10 * cellHeight , cellWidth / 2, 10 * cellHeight);
    context.stroke();
    context.closePath();
    
    context.beginPath();
    context.lineWidth = LINE_WIDTH;
    context.strokeStyle = LINE_COLOR;
    context.fillStyle = LINE_COLOR;
    context.fillRect(15 * cellWidth, 19.25 * cellHeight , cellWidth * 13, cellHeight * 0.75);
    context.stroke();
    context.closePath();
    
    //Display of third tower
    context.beginPath();
    context.lineWidth = LINE_WIDTH;
    context.strokeStyle = LINE_COLOR;
    context.fillStyle = LINE_COLOR;
    context.fillRect(36.25 * cellWidth, 10 * cellHeight , cellWidth / 2, 10 * cellHeight);
    context.stroke();
    context.closePath();
    
    context.beginPath();
    context.lineWidth = LINE_WIDTH;
    context.strokeStyle = LINE_COLOR;
    context.fillStyle = LINE_COLOR;
    context.fillRect(30 * cellWidth, 19.25 * cellHeight , cellWidth * 13, cellHeight * 0.75);
    context.stroke();
    context.closePath();
  }

  Disk getCarInCell(int row, int column) {
    for (Disk car in currentParking.disks) {
      if (car.inCell(row, column)) {
        return car;
      }
    }
    return null;
  }

  Disk getSelectedCarAfterOrBeforeCell(int row, int column) {
    for (Disk car in currentParking.disks) {
      if (car.selected && car.afterOrBeforeCell(row, column)) {
        return car;
      }
    }
    return null;
  }

  void onMouseDown(MouseEvent e) {
    int row = e.offset.y ~/ cellHeight;
    int column = e.offset.x ~/ cellWidth;
    Disk car = getCarInCell(row, column);
    if (car != null) {
      currentParking.deselect();
      car.selected = true;
    } else {
      car = getSelectedCarAfterOrBeforeCell(row, column);
      if (car != null) {
        car.moveToOrTowardCell(row, column);
        if (car.currentColumn == COLUMNS_COUNT - car.length) {
          car.currentColumn = COLUMNS_COUNT; // the car exits the parking
        }
      }
    }
  }

}
