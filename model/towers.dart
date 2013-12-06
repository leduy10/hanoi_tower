part of hanoi_tower;

class Tower extends Concept {

  static final int LINE_WIDTH = 1;
  static final String LINE_COLOR = '#000000'; // black
  static final int SSS = 8; // selection square size
  
  int number;
  List disks;
  bool lastDiskSelected = false;
  bool middleDiskSelected = false;
  bool towerSelected = false;

  Tower(this.number) {
    disks = new List();
  }

  void clear() {
    while (disks.length > 0) {
      disks.removeLast();
    }
    clearSelected();
  }
  
  bool click(int row, int column) {
    
    bool returnValue = false;
    
    //Verifies if the click is on a disk
    for (int i = 0; i < disks.length; i++) {
      Disk myDisk = disks.elementAt(i);
      if (myDisk.inCell(row, column) == true) {
        myDisk.selected = true;
        if (i == disks.length - 1) {
          clearSelected();
          lastDiskSelected = true;
          returnValue = true;
        } else {
          clearSelected();
          middleDiskSelected = true;
          returnValue = true;
        }
      } else {
        myDisk.selected = false;
      }
    }
    
    //Verifies if the click is on the tower
    if (row == 19 && (column == (15 * (number - 1))
                   || column == (15 * (number - 1)) + 1
                   || column == (15 * (number - 1)) + 2
                   || column == (15 * (number - 1)) + 3
                   || column == (15 * (number - 1)) + 4
                   || column == (15 * (number - 1)) + 5
                   || column == (15 * (number - 1)) + 6
                   || column == (15 * (number - 1)) + 7
                   || column == (15 * (number - 1)) + 8
                   || column == (15 * (number - 1)) + 9
                   || column == (15 * (number - 1)) + 10
                   || column == (15 * (number - 1)) + 11
                   || column == (15 * (number - 1)) + 12 ))
    {
      clearSelected();
      towerSelected = true;
      returnValue = true;
    } 
    
    return returnValue;
  }
  
  void clearSelected() {
    lastDiskSelected = false;
    middleDiskSelected = false;
    towerSelected = false;
  }
  
  bool noneSelected() {
    if (lastDiskSelected == false && middleDiskSelected == false && towerSelected == false) {
      return true;
    } else {
      return false;
    }
  }
  
  bool addDisk(Disk disk) {
    int i = disks.length;
    disk.currentColumn = (15 * (number - 1)) + 6.5 - (disk.length / 2);
    disk.currentRow = (17.00 - i);
    if (disks.length == 0) {
      disks.add(disk);
      return true;
    } else {
      Disk previousDisk = disks.elementAt(disks.length - 1);
      if (previousDisk.length > disk.length) {
        disks.add(disk);
        return true;
      } else {
        return false;
      }
    }
  }
  
  Disk removeDisk() {
    return disks.removeLast();
  }
  
  void draw(CanvasRenderingContext2D context, int cellWidth, int cellHeight) {
    //Display of the tower
    context.beginPath();
    context.lineWidth = LINE_WIDTH;
    context.strokeStyle = LINE_COLOR;
    context.fillStyle = LINE_COLOR;
    context.fillRect((6.25 + (15 * (number - 1))) * cellWidth, 10 * cellHeight , cellWidth / 2, 10 * cellHeight);
    context.stroke();
    context.closePath();
    
    context.beginPath();
    context.lineWidth = LINE_WIDTH;
    context.strokeStyle = LINE_COLOR;
    context.fillStyle = LINE_COLOR;
    context.fillRect((15 * (number - 1)) * cellWidth, 19 * cellHeight , cellWidth * 13, cellHeight);
    context.stroke();
    context.closePath();
    
    //Display of the disks
    for (int i = 0; i < disks.length; i++) {
      Disk myDisk = disks.elementAt(i);
      context.beginPath();
      double row = myDisk.currentRow;
      double column = myDisk.currentColumn;
      double x = column * cellWidth;
      double y = row * cellHeight;
      int diskLength = myDisk.length;
      int diskWidth = cellWidth;
      int diskHeight = cellHeight;
      diskWidth = cellWidth * diskLength;
      context.lineWidth = LINE_WIDTH;
      context.strokeStyle = LINE_COLOR;
      context.fillStyle = myDisk.color;
      // context.rect(x, y , carWidth, carHeight);
      context.fillRect(x, y , diskWidth, diskHeight);
      if (myDisk.selected) {
        context.rect(x, y, SSS, SSS);
        context.rect(x + diskWidth - SSS, y, SSS, SSS);
        context.rect(x + diskWidth - SSS, y + diskHeight - SSS, SSS, SSS);
        context.rect(x, y + diskHeight - SSS, SSS, SSS);
      }
      context.stroke();
      context.closePath();
    }
  }

}

