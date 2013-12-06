part of hanoi_tower;

class HanoiTowerModel {

  static final int LAST_DISK_SELECTED = 2;
  static final int TOWER_SELECTED = 1;
  static final int OTHER_SELECTED = 0;
  
  Tower tower1;
  Tower tower2;
  Tower tower3;
  
  int difficulty;

  HanoiTowerModel() {
    tower1 = new Tower(1);
    tower2 = new Tower(2);
    tower3 = new Tower(3);
    
    init(this);
  }
  
  void initTowers(int nbrDisks) {
    
    difficulty = nbrDisks;
    
    tower1.clear();
    tower2.clear();
    tower3.clear();
    
    if (nbrDisks >= 7) {
      Disk disk7 = new Disk(13, '#BEBEBE');
      tower1.addDisk(disk7);
    }
    
    if (nbrDisks >= 6) {
      Disk disk6 = new Disk(11, '#009966');
      tower1.addDisk(disk6);
    }

    if (nbrDisks >= 5) {
      Disk disk5 = new Disk(9, '#660033');
      tower1.addDisk(disk5);
    }
    
    if (nbrDisks >= 4) {
      Disk disk4 = new Disk(7, '#FF99CC');
      tower1.addDisk(disk4);
    }
    
    if (nbrDisks >= 3) {
      Disk disk3 = new Disk(5, '#00FFFF');
      tower1.addDisk(disk3);
      
      Disk disk2 = new Disk(3, '#FFCC66');
      tower1.addDisk(disk2);
      
      Disk disk1 = new Disk(1, '#66CC99');
      tower1.addDisk(disk1);
    }
  }
  
  void click(int row, int column) {
    bool clicked1;
    bool clicked2;
    bool clicked3;
    
    clicked1 = tower1.click(row, column);
    clicked2 = tower2.click(row, column);
    clicked3 = tower3.click(row, column);
    
    if (clicked1 == false && clicked2 == false && clicked3 == false) {
      tower1.clearSelected();
      tower2.clearSelected();
      tower3.clearSelected();
    } else if (clicked1 == true) {
      if (tower2.lastDiskSelected == true && tower1.towerSelected == true) {
        Disk myDisk = tower2.removeDisk();
        if (tower1.addDisk(myDisk) == false) {
          tower2.addDisk(myDisk);
        }
        tower2.clearSelected();
        tower1.clearSelected();
      } else if (tower3.lastDiskSelected == true && tower1.towerSelected == true) {
        Disk myDisk = tower3.removeDisk();
        if (tower1.addDisk(myDisk) == false) {
          tower3.addDisk(myDisk);
        }
          tower3.clearSelected();
          tower1.clearSelected();
      } else {
      tower2.clearSelected();
      tower3.clearSelected();
      }
    } else if (clicked2 == true) {
      if (tower1.lastDiskSelected == true && tower2.towerSelected == true) {
        Disk myDisk = tower1.removeDisk();
        if (tower2.addDisk(myDisk) == false) {
          tower1.addDisk(myDisk);
        }
        tower1.clearSelected();
        tower2.clearSelected();
      } else if (tower3.lastDiskSelected == true && tower2.towerSelected == true) {
        Disk myDisk = tower3.removeDisk();
        if (tower2.addDisk(myDisk) == false) {
          tower3.addDisk(myDisk);
        }
          tower3.clearSelected();
          tower2.clearSelected();
      } else {
      tower1.clearSelected();
      tower3.clearSelected();
      } 
    } else if (clicked3 == true) {
      if (tower1.lastDiskSelected == true && tower3.towerSelected == true) {
        Disk myDisk = tower1.removeDisk();
        if (tower3.addDisk(myDisk) == false) {
          tower1.addDisk(myDisk);
        }
        tower1.clearSelected();
        tower3.clearSelected();
      } 
      else if (tower2.lastDiskSelected == true && tower3.towerSelected == true) {
        Disk myDisk = tower2.removeDisk();
        if (tower3.addDisk(myDisk) == false) {
          tower2.addDisk(myDisk);
        }
        tower2.clearSelected();
        tower3.clearSelected();
      } else {
        tower1.clearSelected();
        tower2.clearSelected();
      }
    }
  }

}
