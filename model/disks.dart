part of hanoi_tower;

class Disk extends Concept {

  Tower parking;

  String color;
  int startRow;
  int startColumn;
  int length;

  int currentRow;
  int currentColumn;
  bool selected = false;

  Disk(this.parking, this.length, this.color);

  bool inCell(int row, int column) {
    if (currentRow == row && currentColumn == column) {
      return true;
    } else if (length == 3) {
      if (currentRow == row && (currentColumn == column - 1 
                             || currentColumn == column - 2)) 
      {
        return true;
      }
    } else if (length == 5) {
      if (currentRow == row && (currentColumn == column - 1 
                             || currentColumn == column - 2 
                             || currentColumn == column - 3 
                             || currentColumn == column - 4) )
      {
        return true;
      }
    } else if (length == 7) {
      if (currentRow == row && (currentColumn == column - 1 
                             || currentColumn == column - 2 
                             || currentColumn == column - 3 
                             || currentColumn == column - 4
                             || currentColumn == column - 5
                             || currentColumn == column - 6) )
      {
        return true;
      }
    } else if (length == 9) {
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
    } else if (length == 11) {
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
    } else if (length == 13) {
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
    if (currentRow == row && currentColumn == column + 1) {
      return true;
    }
    return false;
  }

  bool beforeCell(int row, int column) {
    if (currentRow == row && length == 2 && currentColumn == column - 2) {
      return true;
    } else if (currentRow == row && length == 3 && currentColumn == column - 3) {
      return true;
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
      currentColumn = currentColumn + 1;
    }
  }

}

