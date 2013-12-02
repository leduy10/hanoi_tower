part of hanoi_tower;

class Cars extends Concepts {

  Parking parking;
  CarBrand carBrand;

  Cars.ofParking(this.parking);

  Cars.ofCarBrand(this.carBrand);

  void deselect() {
    for (Car car in this) {
      car.selected = false;
    }
  }

  Car getSelectedCar() {
    for (Car car in this) {
      if (car.selected) {
        return car;
      }
    }
    return null;
  }

}

class Car extends Concept {

  Parking parking;
  CarBrand carBrand;

  String orientation;
  int startRow;
  int startColumn;

  int currentRow;
  int currentColumn;
  bool selected = false;

  Car(this.parking, this.carBrand);

  String toString() {
    return 'Car: ${oid.timeStamp} ${orientation} ${startRow} ${startColumn}';
  }

  bool inCell(int row, int column) {
    if (currentRow == row && currentColumn == column) {
      return true;
    } else if (orientation == 'horizontal' && carBrand.length == 3) {
      if (currentRow == row && (currentColumn == column - 1 
                             || currentColumn == column - 2)) 
      {
        return true;
      }
    } else if (orientation == 'horizontal' && carBrand.length == 5) {
      if (currentRow == row && (currentColumn == column - 1 
                             || currentColumn == column - 2 
                             || currentColumn == column - 3 
                             || currentColumn == column - 4) )
      {
        return true;
      }
    } else if (orientation == 'horizontal' && carBrand.length == 7) {
      if (currentRow == row && (currentColumn == column - 1 
                             || currentColumn == column - 2 
                             || currentColumn == column - 3 
                             || currentColumn == column - 4
                             || currentColumn == column - 5
                             || currentColumn == column - 6) )
      {
        return true;
      }
    } else if (orientation == 'horizontal' && carBrand.length == 9) {
      if (currentRow == row && (currentColumn == column - 1 
                             || currentColumn == column - 2 
                             || currentColumn == column - 3 
                             || currentColumn == column - 4
                             || currentColumn == column - 5
                             || currentColumn == column - 6
                             || currentColumn == column - 7
                             || currentColumn == column - 8) )
      {
        return true;
      }
    } else if (orientation == 'horizontal' && carBrand.length == 11) {
      if (currentRow == row && (currentColumn == column - 1 
                             || currentColumn == column - 2 
                             || currentColumn == column - 3 
                             || currentColumn == column - 4
                             || currentColumn == column - 5
                             || currentColumn == column - 6
                             || currentColumn == column - 7
                             || currentColumn == column - 8
                             || currentColumn == column - 9
                             || currentColumn == column - 10) )
      {
        return true;
      }
    } else if (orientation == 'horizontal' && carBrand.length == 13) {
      if (currentRow == row && (currentColumn == column - 1 
                             || currentColumn == column - 2 
                             || currentColumn == column - 3 
                             || currentColumn == column - 4
                             || currentColumn == column - 5
                             || currentColumn == column - 6
                             || currentColumn == column - 7
                             || currentColumn == column - 8
                             || currentColumn == column - 9
                             || currentColumn == column - 10
                             || currentColumn == column - 11
                             || currentColumn == column - 12) )
      {
        return true;
      }
    }
    return false;
  }

  bool afterCell(int row, int column) {
    if (orientation == 'horizontal') {
      if (currentRow == row && currentColumn == column + 1) {
        return true;
      }
    } else if (orientation == 'vertical') {
      if (currentRow == row + 1 && currentColumn == column) {
        return true;
      }
    }
    return false;
  }

  bool beforeCell(int row, int column) {
    if (orientation == 'horizontal') {
      if (currentRow == row && carBrand.length == 2 && currentColumn == column - 2) {
        return true;
      } else if (currentRow == row && carBrand.length == 3 && currentColumn == column - 3) {
        return true;
      }
    } else if (orientation == 'vertical') {
      if (currentRow == row - 2 && carBrand.length == 2 && currentColumn == column) {
        return true;
      } else if (currentRow == row - 3 && carBrand.length == 3 && currentColumn == column) {
        return true;
      }
    }
    return false;
  }

  bool afterOrBeforeCell(int row, int column) {
    return afterCell(row, column) || beforeCell(row, column);
  }

  moveToOrTowardCell(int row, int column) {
    if (afterCell(row, column)) {
      currentRow = row;
      currentColumn = column;
    } else if (beforeCell(row, column)) {
      if (orientation == 'horizontal') {
        currentColumn = currentColumn + 1;
      } else if (orientation == 'vertical') {
        currentRow = currentRow + 1;
      }
    }
  }

}

